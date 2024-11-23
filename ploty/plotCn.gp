#plotCn.gp
#ustawienie bazy wykresu
set terminal pngcairo size 800,600 enhanced font "Verdana,10"

set output "Cn.png"

set datafile separator ";"

set title "Wykres Cn w zależności od n"
set xlabel "n"
set ylabel "Cn"

set grid

plot \
    "wyniki.dat" using 1:4 title "Cn" with points pt 7 lc rgb "blue", \
    "srednie.dat" using 1:4 title "Średnia Cn" with points pt 7 lc rgb "red"
