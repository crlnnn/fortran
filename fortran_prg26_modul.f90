module module_1
    implicit none
    real r

contains

    real function random_real(a, b)
        real a, b, r

        call random_number(r)
        random_real = r * (b - a) + a

    end function

    integer function random_integer(a, b)
        integer a, b
        real r

        call random_number(r)
        random_integer = int(r * (b - a) + a)

    end function

end module

program priklad_40
    use module_1
    implicit none

    write(*,*) random_real(1.,10.)
    write(*,*) random_integer(1,10)

end program