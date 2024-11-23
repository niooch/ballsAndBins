#plotDn.gp
#ustawienie bazy wykresu
set terminal pngcairo size 800,600 enhanced font "Verdana,10"

set output "Dn.png"

set datafile separator ";"

set title "Wykres Dn w zależności od n"
set xlabel "n"
set ylabel "Dn"

set grid

plot \
    "wyniki.dat" using 1:5 title "Dn" with points pt 7 lc rgb "blue", \
    "srednie.dat" using 1:5 title "Średnia Dn" with points pt 7 lc rgb "red"
