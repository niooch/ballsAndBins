    set terminal pngcairo size 800,600 enhanced font "Verdana,10"
    set output "D(n) - C(n).png"
    set datafile separator ";"
    set title "Wykres D(n) - C(n) w zależności od n"
    set xlabel "n"
    set ylabel "D(n) - C(n)"

    set grid

    plot         "wyniki.dat" using 1:6 title "D(n) - C(n)" with points pt 7 lc rgb "blue",         "srednie.dat" using 1:6 title "Średnia D(n) - C(n)" with points pt 7 lc rgb "red"
