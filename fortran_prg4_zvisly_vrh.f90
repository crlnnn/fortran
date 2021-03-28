program Zvisly_vrh
    implicit none
    real, parameter :: g = -9.81, x0 = 0, v0 = 20
    real, dimension(5) :: t = (/0.0, 1.4 ,2.0, 3.0, 4.1/)
    real, dimension(5) :: answer
    integer i

    DO i = 1,size(t)

        answer(i) = v0*t(i)+0.5*g*t(i)**2
        write(*,*) "Hmotný bod je v čase",t(i),"vo výške",answer(i),"m"

    END DO

endprogram