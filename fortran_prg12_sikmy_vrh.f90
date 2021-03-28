program Vnitrni_funkce
    implicit none

    real, parameter :: g = 9.81, pi = 3.14159265358979323846
    real v0, x0, y0, y, x, t, angle, i

    x0 = 0
    y0 = 0
    t = 0.1

    write(*,*)"Zadaj uhol v stupnoch:"
    read(*,*) angle

    angle = pi * angle/180

    write(*,*)"Zadaj pociatocnu rychlost"
    read(*,*) v0

    do
        x = x0 + v0*t*cos(angle)
        y = y0 + v0*t*sin(angle)-0.5*g*t**2

        if ( y < 0) exit

        write(*,*)"Poloha bodu na osi x",x
        write(*,*)"Poloha bodu na osi y",y
        write(*,*)"V case",t
        write(*,*)
        t = t + 0.1
    end do

    write(*,*)"HB spadol na zem v case:",t,"sekundy."
endprogram
