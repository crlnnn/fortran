program prg_datovy_typ
    implicit none

    type card
        integer value
        character(len = 10) :: color
    end type

    type(card) :: swap

    integer, parameter :: seed = 1337
    integer i, randomIndex1, randomIndex2

    type(card), dimension(13) :: deck

    do i = 1, size(deck)
        deck(i)%value = i
        if (mod(i, 2) == 0) then
            deck(i)%color = "red"
        else
            deck(i)%color = "black"
        end if
    end do

    call srand(seed)

    do i = 1, size(deck)+1
        randomIndex1 = int(rand() * (size(deck) - 1) + 1)
        do while(.true.)
            randomIndex2 = int(rand() * (size(deck) - 1) + 1)
            if (randomIndex1 /= randomIndex2) exit
        end do
        swap = deck(randomIndex1)
        deck(randomIndex1) = deck(randomIndex2)
        deck(randomIndex2) = swap
    end do

    do i = 1, size(deck)
        write(*, *)deck(i)
    end do

end program prg_datovy_typ