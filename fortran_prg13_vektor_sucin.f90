program vektor_sucin

    real, dimension(3) :: a, b

    a = (/ 1, 4, 7 /)
    b = (/ 6, 8, 0 /)

    write(*, *) vektor_sucin_f(a, b)

contains

    function vektor_sucin_f(a, b)
        real, dimension(3) :: vektor_sucin_f
        real, dimension(3), intent(in) :: a, b

        vektor_sucin_f(1) = a(2) * b(3) - a(3) * b(2)
        vektor_sucin_f(2) = a(3) * b(1) - a(1) * b(3)
        vektor_sucin_f(3) = a(1) * b(2) - b(1) * a(2)
    end function vektor_sucin_f

end program vektor_sucin
