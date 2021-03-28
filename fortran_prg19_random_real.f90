program random_number_real
    real :: a, b

    write(*, *) "Zadaj prave ohranicenie intervalu"
    read(*, *)a
    write(*, *) "Zadaj lave ohranicenie intervalu"
    read(*, *)b

    y = r * (b - a) + a

    write(*, *) y

end program random_number_real