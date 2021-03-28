program faktorial
implicit none
    integer x, i
    integer (kind=8) :: factorial = 1

    write(*,*) "Zadaj číslo, pre ktoré sa vypočíta faktoriál:"
    read(*,*) x

    do i = 1, x
        factorial = factorial * i
    end do

    write(*,*) huge(factorial)
    write(*,*) "Faktoriál zadaného čísla je:",factorial

end program faktorial