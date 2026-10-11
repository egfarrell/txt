! fortran perimeter

! runtime system
    handles i/o
    handles stack and heap
    may be an issue when running on super computer

! complex numbers
    handled well in fortran

! derived data types 
    ! (struct in C)
    type measurement
        real :: pressure
        real :: number
    end type measurement

    type (measurement) :: m1, m2

    m1%number = 1
    m2%pressure = 2.5


! big difference to C
    ! Fortran is case *INSENSITIVE*!

! functions
    functin myfunc(x) result(value)

