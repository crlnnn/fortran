program Prevodnik_jednotek
    implicit none
    real a
    real, parameter :: b = 39.37008, c = 3.280840, d = 1.093613, e = 0.00062137
    write(*,*) "Zadaj číslo v metroch"
    read(*,*) a
    write(*,*) a,"m je v prepočte",a*b,"in"
    write(*,*) a,"m je v prepočte",a*c,"ft"
    write(*,*) a,"m je v prepočte",a*d,"yd"
    write(*,*) a,"m je v prepočte",a*e,"mi"
endprogram