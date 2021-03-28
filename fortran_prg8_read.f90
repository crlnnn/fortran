program read
    implicit none
    real, allocatable, dimension(:) :: x
    integer :: i, elements
    integer, parameter :: z = 15

    elements = z
    allocate(x(z))

    write(*,*) "Zadaj hodnoty oddelené enterom, maximum 15 hodnôt"

    DO i = 1, z
        read(*,*) x(i)
        if (x(i)==0) exit
    END DO

    write(*,*) "Najväčšie číslo zo zadaných je:",maxval(x)

end program read