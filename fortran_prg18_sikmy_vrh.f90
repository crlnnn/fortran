program sikmy_vrh_vol2
    real angle, v0, y0

    write(*, *)"Zadaj pociatocnu rychlost"
    read(*, *) v0
    write(*, *)"Zadaj pociatocnu hodnotu y0"
    read(*, *) y0
    call oblique_litter(angle, v0, y0, x, x0, t, y, rad, anglePLUS)
    write(*, *)"HB spadol na zem v case:", t, "sekundy, a dosiel do dialky", x, "m pod uhlom", angle

end program

subroutine oblique_litter(angle, v0, y0, x, x0, t, y, degreesToRad, anglePLUS)
    real angle, v0, y0, x0, y, x, t, degreesToRad, anglePLUS
    real, parameter :: g = 9.81, pi = 3.14159265358979323846

    t = 1
    x0 = 0
    angle = 5
    do while (anglePLUS < 80)
        anglePLUS = angle + 5
        do
            degreesToRad = anglePLUS * pi / 180

            x = x0 + v0 * t * cos(degreesToRad) !=> vyjadri sa t = x/v0*cos(rad) => dosadi sa za t v y rovnici
            y = y0 + v0 * t * sin(degreesToRad) - 0.5 * g * t**2 ! => y = x*tan(rad)-((g*x**2)/(2v0**2*cos**2(rad)))
            ! nasledne po dopade HB na zem, y = 0, x = dlzka vrhu
            ! l*(tan(rad)-(g*l)/(2*v0**2*cos**2(rad)) = 0
            ! po uprave je to
            ! l = (v0**2*sin(rad)*2*(rad))/(g))
            if (y < 0) exit

            write(*, *)"Poloha bodu na osi x", x
            write(*, *)"Poloha bodu na osi y", y
            write(*, *)"Uhol", anglePLUS
            write(*, *)"V case", t
            write(*, *)

            t = t + 1
        end do
    end do
end