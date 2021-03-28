program  spolocny_delitel
    implicit none

    integer :: y, x

    write(*, *) "Zadaj dve cisla"
    read(*, *)  y, x
    write(*, *)"Najvacsi spolocny delitel je", max_delitel(y, x)


contains
    function max_delitel(x, y)
        integer :: max_delitel
        integer, intent(in) :: x, y
        integer :: a, b, c

        b = x
        a = y
        do
            c = mod(a, b)
            if (c == 0) exit
            a = b
            b = c
        end do
        max_delitel = b
    end function max_delitel

end program  spolocny_delitel