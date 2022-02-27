#!/usr/bin/gnuplot

set terminal epslatex size 18cm,10cm
set output '4.tex'

set title
set xlabel '$U^2$ (\si{\volt\squared})'
set ylabel '$\arcsin \sqrt{I/I_0}$'
set grid x,y
set xrange[0:1050000]
set yrange [0:pi]
set samples 10000
set key top left
set format x "%12.0f"
set xtics (200000,400000,600000,800000,1000000)

konst=2.97204918554263e-06

set label 1 '$y=\num{2.97e-6}\cdot x-\num{0.716}$' at 405000,1.7

f(x)=c*x+a
fit [3:8.5] f(x) 'konecny' i 1 u ($3/100000):4 via a,c

plot 'konecny' i 0 u 3:4 ls 1 ps 3 lw 3 title 'první měření', '' i 1 u 3:4 ls 2 ps 3 lw 3 title 'druhé měření', (x>300000 && x<850000) ? a+c*x/100000:1/0  ls 2 lw 5 title 'fit'

unset label 1
set terminal wxt
set output
