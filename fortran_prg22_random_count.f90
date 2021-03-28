program random_number_count
    real, allocatable :: numbers(:)
    real, allocatable :: occurs(:)
    integer :: i
    integer, parameter :: min = 1, max = 300, count = 1000
    allocate(numbers(count))
    allocate(occurs(max))
    do i = 1, count
        call random_number(rand)
        y = int(rand * (max - min + 1) + min)
        numbers(i) = y
        occurs(i) = 0
        write(*, *) y
    end do
    i = 0
    do while (i < max)
        i = i + 1
        j = 0
        do while (j < count)
            j = j + 1
            if(i == numbers(j)) then
                occurs(i) = occurs(i) + 1
            end if
        end do
        open(1, file = 'subor.txt')
    end do
end program random_number_count