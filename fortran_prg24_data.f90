program priklad_24_data
    implicit none

    real, allocatable :: TempArray(:)
    real, allocatable :: PressArray(:)

    integer :: un, ios, Step_data_test, nlines
    real :: avgTemp, avgPress, Temp_data_test, Press_data_test, varianceTemp, variancePress, junk
    logical :: lex
    character(len = 100) :: header

    inquire(file = "data_cviceni.data", exist = lex)
    if(.not. lex) stop "file doesnt exist"

    open(newunit = un, file = "data_cviceni.data", status = "old", iostat = ios)
    if(ios /= 0) stop "error while opening file"

    read(un, *) header

    nlines = 0

    do
        read(un, *, iostat = ios)
        if (ios/=0) exit
        nlines = nlines + 1
    end do

    allocate(TempArray(nlines))
    allocate(PressArray(nlines))

    avgTemp = 0.
    avgPress = 0.

    !Print"(f6.3)", avgTemp

    rewind (unit = un)
    !rewind(newunit = un2, file = "data_test.data", status = "old", iostat = ios)
    read(un, *) header

    nlines = 0

    do
        read(un, *, iostat = ios) junk, Temp_data_test, junk, junk, junk, junk, junk, junk, junk, junk, &
                Press_data_test, junk, junk, junk
        if(ios /= 0) exit

        nlines = nlines + 1

        avgTemp = avgTemp + Temp_data_test
        avgPress = avgPress + Press_data_test

        TempArray(nlines) = Temp_data_test
        PressArray(nlines) = Press_data_test

    enddo

    avgTemp = avgTemp / nlines
    avgPress = avgPress / nlines
    varianceTemp = sqrt((sum(TempArray**2) - sum(TempArray)**2 / nlines) / nlines)
    variancePress = sqrt((sum(PressArray**2) - sum(PressArray)**2 / nlines) / nlines)
    close(un)

    open(1, file = "data.txt")

    write(1, *) "avgTemp = ", avgTemp
    write(1, *) "avgPress = ", avgPress

    write(1, *) "varianceTemp = ", varianceTemp
    write(1, *) "variancePres = ", variancePress

    close(1)

end program priklad_24_data