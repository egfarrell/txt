fortran tips

! fluting around with the old g77 compiler!
    ! add to sources.list
        deb http://old-releases.ubuntu.com/ubuntu/ hardy universe
        deb-src http://old-releases.ubuntu.com/ubuntu/ hardy universe
        deb http://old-releases.ubuntu.com/ubuntu/ hardy-updates universe
        deb-src http://old-releases.ubuntu.com/ubuntu/ hardy-updates universe

    ! add ld library path
        export LIBRARY_PATH=/usr/lib/i386-linux-gnu

    ! add symlink because old hardy g77 expects different folders
        cd /lib/ && sudo ln -s i386-linux-gnu/libgcc_s.so.1

! Compile for debugging
	gfortran -O0 -ggdb somefile.f90

! 'gprof' profiler
    ! add '-pg' flag to gfortran flags.

    gfortran -pg -O -o z z.f90
    ./z

    ! see output 1
        gprof -l -b z gmon.prof | more

    ! see output 2
        gprof --brief

! DR fortran
    * f77     added characters
    * f90     added modular programming, dynamic allocation, derived types
    * f95     minor
    * f2003   C interoperability. object oriented features, IO enhancements
    * f2008   do concurrent (each loop iteration is parallel),
              co-arrays -> global address space language

! Fortran 77 *FIXED FORM* Source
    - if line begins with <TAB> character,
        then text following the tab is scanned *as if* it started in column 7.
        (even if it begins in column 6)

    - if line begins with spaces,
        then text *must* begin from column 7

    - Vim moral: if you "retab",
        - make sure lines that previously began with a <TAB>
          are now indented to start at column 7

! generate tags file
    ftags **/*.f*

! sample format
    output_format = "(F21.11, F15.5, 8(F10.5))"
    output_format = '(F21.11,  9(",", F15.5))'

! format
    If a value is too large to be printed in the specified
    format, Fortran will just print a string of asterisks
    (eg: ********** ). If you get such an output, you have
    to fix your format statement.

! trim
    remove TRAILING blanks from a string

! ide
	eclipse photran

! case
	fortran is case-INSENSITIVE

! array indexes
	START AT 1!
	real (kind=8), x(3)
	! but you can override and specify starting index:
	real (kind=8), x(0:2)

! array storage
	fortran stores column by column
	(whereas python stores row by row)

! matlab type stuff
	matmul, transpose

! compiler
	gfortran (GNU) - will do f77 and f90/95

! formats
	.f for fixed format (executable starts in column 7)
	.f90 for free format

! force variable declaration
	implicit none

! default compiled file
	a.out (like C)

! comile code
	gfortran example1.f90
	(creates a.out)

! change exe name
	gfortran example1.f90 -o xxxx.exe
	(creates xxxx.exe)

! compile code only (dont create exe)
	gfortran -c example1.f90
	(creates example1.o)

! link object file
	gfortran example1.o -c -o xxxx.exe

! gotcha: declare a variable
    ! but dont give a value
	! and dont have "IMPLICIT NONE"
    ! you'll get output:
        z = 3243242342423.e-32
        (i.e. will just print out random garbage from the z address)

! constant variables
	integer, PARAMETER :: n = 1000
	! (error if another value assigned to n in code)

! parentheses
	need them around everything between if .. then

! continuation character
	&

! boolean
	logical :: bFound
	bFound  = .false.
	bFound  = .true.


! declare functions (use EXTERNAL)
	real (kind=8), EXTERNAL :: f

! declare function input parameters
	real (kind=8), INTENT(in) :: x

! subroutines + parameters
	call sub1(x, y, z, a, b)
	real (kind=8), INTENT(in) :: x
	real (kind=8), INTENT(out) :: y
	real (kind=8), INTENT(inout) :: z, a, b

! matlab style array manipulation
	f = x ** 2
	! f and x are arrays here!

! dynamic arrays
	in F77, clunky:
	allocate a huge work array
	and then partition off sub arrays from the work array
	LAPACK uses this

	! in F90, dynamic allowed
	real (kind=8), dimension(:), allocatetable :: x
	real (kind=8), dimension(:,:), allocatetable :: a

	allocate(x(10))
	allocate(a(30, 10))
	...use arrays
	deallocate(x)
	deallocate(a)

! array errors!
	allocate(x(30000,100000), stat=alloc_error)

	if (alloc_error /= 0) then
		print *, "out of memory"
		stop
	endif

! overwriting variables
	pass an array into a subroutine
	go outside array bounds inside the subroutine
	you end up writing over the next variables in memory

! segmentation fault
	pass an array into a subroutine
	go WAY WAY outside array bounds inside the subroutine
	you whack up the memory completely and get a seg fault
	ie you try to write into memory locations youre not allowed to

! compiler catch array out of bounds
	gfortran -fbounds-check
	gives more meaningful error msg

! assigning memory
	fotran allocates you memory "PAGES"
	so you may have more memory than you think
	before you run into a seg fault!
