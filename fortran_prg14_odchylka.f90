program priklad_24
    implicit none

    real :: u(5) = [ 1.2, 5.6, 8.5, -2.3, 6.1 ]

    write(*, *) "Prumer hodnot v u = ", prumer(u)
    write(*, *) "Smerodajná odchýlka zadaných čísel je:", variance(u)

contains

    real function prumer(a)
        real :: a(:)
        prumer = sum(a) / size(a)
    end function

    real function variance(b)
        real :: b(:), x
        x = size(b) !pre zjedodnusenie zapisu formule
        variance = sqrt((sum(b**2) - sum(b)**2 / x) / x)
    end function variance

end program