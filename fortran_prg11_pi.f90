program pi_montecarlo
    implicit none
    integer:: n,square,circle
    double precision, parameter::pi=3.14159265358
    double precision::x,y,error,pi_calc
    square = 0
    circle = 0
    error = 1
    n = 0
    do while (abs(error)>1e-6)
        x=ran()
        y=ran()
            if (sqrt(x**2+y**2)<=1) then
                circle=circle+1
                square=square+1
                else
                    square=square+1
            end if
        pi_calc=4*(dble(circle)/dble(square))
        error=(pi_calc-pi)
            write(*,*)"Pocet spocitanych krokov:",n,"Pi:",pi_calc,"Rozdiel:",error
        n=n+1
    end do
end program