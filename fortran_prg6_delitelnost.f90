program Delitelnost
implicit none

real :: numbers(10)
real, dimension(10) :: b
integer i
real a

DO i = 1, 9
    numbers(i) = i + 1
END DO

write(*,*) "Zadaj číslo, pre ktoré chceš vypočítať deliteľnosť"
read *, a

DO i = 1, size(numbers)

    b(i) = mod(a, numbers(i))

    IF(b(i)==0.0) THEN
        write(*,*)"Číslo je deliteľné:",numbers(i)
    ELSE
!write(*,*)"Číslo nie je deliteľné:",numbers(i)
END IF

END DO

endprogram
