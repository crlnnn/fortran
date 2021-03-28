program  prvocislo
    implicit none

    integer :: n, x, b

    write(*,*) "Zadaj cislo"

    read(*,*) n
    call prvocislo_s(n,x)

    contains
         subroutine prvocislo_s(n, x)
            integer :: n, x

            if (mod(n,2) == 0) then
            write(*, *)"Cislo",n,"nie je prvocislo"
        else
            x = 3
            do
                if (mod(n, x) == 0)  exit
                x = x + 2
            end do
            if (x * x > n) then
                write(*,*)"Cislo",n,"je prvocislo"
            else
                write(*,*)"Cislo",n,"nie je prvocislo"
            end if
        end if
        end subroutine

end program prvocislo