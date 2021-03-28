program Kvadraticka_rovnica
    implicit none

    real :: a, b, c, discriminant, x1, x2, real_part, imag_part

    write(*, *) "Zadaj hodnoty koeficientov rovnice"
    read(*, *) a, b, c

    discriminant = bx2 - 4 * a * c

    if (discriminant>0) then

        x1 = (-b + sqrt(discriminant)) / (2 * a)
        x2 = (-b - sqrt(discriminant)) / (2 * a)

        write(*, *) "Riešením kvadratickej rovnice sú reálne čísla:"
        write(*, *) "x1", x1
        write(*, *) "x2", x2

    else if (discriminant==0) then

        x1 = -b / (2 * a)

        write(*, *) "Rovnica má jeden dvojnásobný koreň:", x1

    else if (discriminant<0) then

        real_part = (-b) / (2. * a)
        imag_part = sqrt(abs(discriminant)) / (2. * a)

        write(*, *) "Riešením kvadratickej rovnice sú komplexne združené čísla:"
        write(*, *) "x1", real_part, "+i", imag_part
        write(*, *) "x2", real_part, "-i", imag_part

    end if
endprogram