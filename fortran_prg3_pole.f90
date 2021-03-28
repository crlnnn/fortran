program Pole_a_vnitrni_funkce
    implicit none
    real, allocatable, dimension(:) :: x
    integer:: elements, z, i

    elements = z
    allocate(x(z))

    write(*,*) "Zadaj počet hodnôt, pre ktoré sa vypočíta aritmetický priemer a smerodajná odchýlka"
    read *, z

    write(*,*) "Zadaj hodnoty oddelené enterom"

    DO i = 1, z
        read(*,*) x(i)
    END DO

    write(*,*) "Aritmetický priemer zadaných čísel je:",average(x, z)
    write(*,*) "Smerodajná odchýlka zadaných čísel je:",variance(x, z)

contains
    real function average(x, z)
        real :: x(:)
        integer :: z
        average = sum(x)/z
    end function
    real function variance(x, z)
        real :: x(:)
        integer :: z
        variance = sqrt((sum(x**2)-sum(x)**2/z)/z)
    end function variance
end program