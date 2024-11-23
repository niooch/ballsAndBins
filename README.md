#Ball and Bins

![to tak nie wyglada](https://jkogut.pl/assets/balls.png)

## Problem
Mamy n urn i wrzucamy do nich kule. Po drodze liczymy pewne statystyki.
* `Bn` – moment pierwszej kolizji; `Bn = k`, jesli k-ta z wrzucanych kul jest pierwsza, która trafiła do niepustej urny (paradoks urodzinowy, ang. birthday paradox),
* `Un` – liczba pustych urn po wrzuceniu n kul,
* `Cn` – minimalna liczba rzutów, po której w kazdej z urn jest co najmniej jedna kula (pierwszy moment, w którym nie ma juz pustych urn; problem kolekcjonera kuponów, ang. coupon collector’s problem),
* `Dn` – minimalna liczba rzutów, po której w kazdej z urn sa co najmniej dwie kule (the siblings of the coupon collector / coupon collector’s brother),
* `Dn − Cn` – liczba rzutów od momentu Cn potrzebna do tego, zeby w kazdej urnie były co najmniej dwie kule.

## Jak to chodzi?
odpalamy skrypt, ktory wszystko ogarnia, razem z wykresami
```bash
bash run.sh $(seq 1000 1000 100000)
```
policzy dla `n = 1000, 2000, ..., 100000`, wykresy w katalogu `wykresy/`
