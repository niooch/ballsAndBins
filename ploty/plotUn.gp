#plotUn.gp
#ustawienie bazy wykresu
set terminal pngcairo size 800,600 enhanced font "Verdana,10"

set output "Un.png"

set datafile separator ";"

set title "Wykres Un w zależności od n"
set xlabel "n"
set ylabel "Un"

set grid

plot \
    "wyniki.dat" using 1:3 title "Un" with points pt 7 lc rgb "blue", \
    "srednie.dat" using 1:3 title "Średnia Un" with points pt 7 lc rgb "red"
