    set terminal pngcairo size 800,600 enhanced font "Verdana,10"
    set output "D(n)-C(n)NAn-D(n)-C(n)NAnln(n)-D(n)-C(n)NAnln(ln(n)).png"
    set datafile separator ";"
    set grid

    set title "Wykres D(n)-C(n)NAn, D(n)-C(n)NAnln(n), D(n)-C(n)NAnln(ln(n)) w zależności od n"
    set xlabel "n"
    set ylabel "stosunek"

    plot         "ratios.dat" using 1:11 title "D(n)-C(n)NAn" with points pt 7 lc rgb "blue",         "ratios.dat" using 1:12 title "D(n)-C(n)NAnln(n)" with points pt 7 lc rgb "red",         "ratios.dat" using 1:13 title "D(n)-C(n)NAnln(ln(n))" with points pt 7 lc rgb "green"
