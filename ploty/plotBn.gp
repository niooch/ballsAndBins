#plotBn.gp
#ustawienie bazy wykresu
set terminal pngcairo size 800,600 enhanced font "Verdana,10"

set output "Bn.png"

set datafile separator ";"

set title "Wykres Bn w zależności od n"
set xlabel "n"
set ylabel "Bn"

set grid

plot \
    "wyniki.dat" using 1:2 title "Bn" with points pt 7 lc rgb "blue", \
    "srednie.dat" using 1:2 title "Średnia Bn" with points pt 7 lc rgb "red"
