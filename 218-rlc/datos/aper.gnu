#!/usr/bin/gnuplot

set terminal epslatex size 12cm,8cm
set output 'aper.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$R_{ap}$ (\si{\ohm})'
set grid x,y
set yrange[0:1400]
set xrange[0:11]
set key bottom right

L=0.34398875
plot 'aper' u 1:2 lw 2 ps 4 notitle, 2*sqrt(L/x*1000000) lw 2 title '$R_{ap}=2 \sqrt{L_2/C}$'

set terminal wxt
set output
