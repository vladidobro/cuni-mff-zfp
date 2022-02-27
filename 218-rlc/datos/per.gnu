#!/usr/bin/gnuplot

set terminal epslatex size 12cm,8cm
set output 'per.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$T$ (\si{\milli\second})'
set grid x,y
set yrange[0:17]
set xrange[0:11]
set key bottom right

L=0.515469
plot 'per' lw 2 ps 4 notitle, 2*pi*sqrt(L*x)  lw 2 title '$T=2\pi \sqrt{L_1C}$'

set terminal wxt
set output
