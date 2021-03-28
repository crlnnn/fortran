program prg10
    implicit none
    integer x, i, j, n, count

    x = 30
    n = x - 1
    count = 0

    do i = 1, n
        do j = i, n
            if (i * j < x) then
                write(*,*)i, j
                count = count + 1
            else
                exit
            end if
        end do
    end do
    write(*,*)"Pocet cisel", count
end program prg10