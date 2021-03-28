program Vnitrni_funkce
    implicit none
    real a, b
    integer c
    write(*,*) "Zadaj reálne číslo"
    read(*,*) a
    write(*,*) "sínus čísla",a,"je:",sin(a)
    write(*,*) "kosínus čísla",a,"je:",cos(a)
    write(*,*) "Zadaj kladné reálne číslo"
    read(*,*) b
    write(*,*) "odmocnina z",b,"je:",sqrt(b)
    write(*,*) "logaritmus čísla",b,"je:",log(b)
    write(*,*) "dekadický logaritmus čísla",b,"je:",log10(b)
    write(*,*) "Zadaj celé číslo"
    read(*,*) c
    write(*,*) "absolútna hodnota z",c,"je:",abs(c)
endprogram
