#plotDn-Cn.gp
#ustawienie bazy wykresu
set terminal pngcairo size 800,600 enhanced font "Verdana,10"

set output "Dn-Cn.png"

set datafile separator ";"

set title "Wykres Dn-Cn w zależności od n"
set xlabel "n"
set ylabel "Dn-Cn"

set grid

plot \
    "wyniki.dat" using 1:6 title "Dn-Cn" with points pt 7 lc rgb "blue", \
    "srednie.dat" using 1:6 title "Średnia Dn-Cn" with points pt 7 lc rgb "red"
