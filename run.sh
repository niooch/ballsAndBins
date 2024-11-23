#!/bin/bash

#skompiluj program
make clean
make

if [ $? -ne 0 ]; then
    echo "Blad kompilacji"
    exit 1
fi

#pobierz dane: sekwencje liczb dla ktorych mamy wykonac symulacje
if [ $# -eq 0 ]; then
    echo "Brak argumentow. uzycie: $0 n1 [n2 n3 ...]"
    exit 1
fi
wartosci_n=$@

#przygotuj plik wynikowy
if [ -f wyniki.dat ]; then
    rm wyniki.dat
fi

#dla kazdej liczby n z argumentow wykonaj symulacje
for n in $wartosci_n; do
    echo "n=$n"
    ./ballsAndBins $n >> wyniki.dat
done

#policz srednie wartosci dla kazdego n:
if [ -f srednie.dat ]; then
    rm srednie.dat
fi

awk -F';' '
BEGIN {
}
{
    n = $1
    for (i = 2; i <= NF; i++) {
        sum[n,i] += $i
        count[n,i] += 1
    }
    num_fields[n] = NF
}
END {
    PROCINFO["sorted_in"] = "@ind_num_asc"  # Sort n numerically ascending
    for (n in num_fields) {
        output = n
        nf = num_fields[n]
        for (i = 2; i <= nf; i++) {
            mean = sum[n,i] / count[n,i]
            output = output ";" sprintf("%.2f", mean)
        }
        print output >> "srednie.dat"
    }
}
' wyniki.dat

#odpal gnuplota
gnuplot ./ploty/plotBn.gp
gnuplot ./ploty/plotUn.gp
gnuplot ./ploty/plotCn.gp
gnuplot ./ploty/plotDn.gp
gnuplot ./ploty/plotDn-Cn.gp

#przenies wykresy do odpowiedniego katalogu
mv *.png ./wykresy/
