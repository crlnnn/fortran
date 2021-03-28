program prg_kamen_nuzky_papir
    implicit none

    character(len = 10), dimension(3) :: moznosti_vyhra, moznosti_prehra
    character (len = 10) :: x
    integer :: clovek, pc
    real harvest

    moznosti_vyhra = (/ character(len = 10) :: 'kamen', 'papir', 'nuzky'/)
    moznosti_prehra = (/ character(len = 10) :: 'nuzky', 'kamen', 'papir'/)

    call random_number(harvest)

    do
        do
            pc = int(rand() * 3) + 1

            write(*, *) "Zadaj svoju moznost"
            read(*, *) x

            if (ANY(moznosti_vyhra == x)) then
                exit
            end if
        end do

        do clovek = 1, size(moznosti_vyhra)
            if (moznosti_vyhra(clovek) == x) then
                exit
            end if
        end do

        if (clovek == pc) then
            write(*, *) "REMIZA"
        else if (moznosti_prehra(clovek) == moznosti_vyhra(pc)) then
            write(*, *) "Vyhral si"
            exit
        else if (moznosti_prehra(pc) == moznosti_vyhra(clovek)) then
            write(*, *) "Vyhral som!"
            exit
        end if
    end do

end program prg_kamen_nuzky_papir