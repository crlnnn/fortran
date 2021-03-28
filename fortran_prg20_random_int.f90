program random_number_int
    integer :: a, b

    write(*, *) "Zadaj prave ohranicenie intervalu"
    read(*, *)a
    write(*, *) "Zadaj lave ohranicenie intervalu"
    read(*, *)b

    call random_number(r)
    y = int(r * (b - a + 1) + a)

    write(*, *) y

end program random_number_int