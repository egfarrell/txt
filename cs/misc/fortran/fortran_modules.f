! fortran modules

! General structure of a module:
	module <MODULE-NAME>
		! Declare variables
		contains
		! Define subroutines or functions
	end module <MODULE-NAME>


! A program/subroutine/function can use this module:
	program <NAME>
		use <MODULE-NAME>
		! Declare variables
		! Executable statements
	end program <NAME>

! Can also specify what variables/subroutines/functions from module to be used.
!   Similar to from numpy import linspace
!   rather than from numpy import *

	program <NAME>
		use <MODULE-NAME>, only: <LIST OF SYMBOLS>
		! Declare variables
		! Executable statements
	end program <NAME>


! If sub1m.f90 is a module, then compiling it creates
	sub1m.o
	sub1m.mod: - holds INTERFACE INFORMATION!

	$ gfortran -c sub1m.f90
	$ ls
		main.f90
		sub1m.f90
		sub1m.mod
		sub1m.o


! module must be compiled before any subroutine or program that uses it!
	$ rm -f sub1m.mod
	$ gfortran main.f90 sub1m.f90 (WRONG ORDER)
		main.f90:5.13:
		use sub1m
		1
		Fatal Error: Can’t open module file ’sub1m.mod’
		for reading at (1): No such file or directory

	$ gfortran sub1m.f90 main.f90 (RIGHT ORDER)

