module module_1
    implicit none

contains

    real function average(z, x)

        real, allocatable, dimension(:) :: x
        integer :: z, i

        average = sum(x) / z

    end function

    real function variance(z, x)

        real, allocatable, dimension(:) :: x
        integer :: z, i

        variance = sqrt((sum(x**2) - sum(x)**2 / z) / z)

    end function

end module

program priklad_41
    use module_1
    implicit none

    real, allocatable, dimension(:) :: x
    integer :: elements, z, i

    elements = z
    allocate(x(z))

    write(*, *) "Zadaj počet hodnôt, pre ktoré sa vypočíta aritmetický priemer a smerodajná odchýlka"
    read *, z

    write(*, *) "Zadaj hodnoty oddelené enterom"

    DO i = 1, z
        read(*, *) x(i)
    END DO

    write(*, *) "Aritmetický priemer zadaných čísel je:", average(z, x)
    write(*, *) "Smerodajná odchýlka zadaných čísel je:", variance(z, x)

end program