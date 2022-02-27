#!/usr/bin/gnuplot

set terminal epslatex size 14cm,10cm
set output 'RCu.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$\cos\varphi$'
set grid x,y
set yrange[0:1]
set xrange[0:11]
set key bottom left

plot 'RC' i 0 u 1:2 ps 3 lw 3 title 'sériový', '' i 1 u 1:2 ps 3 lw 3 title 'paralelní'

set terminal wxt
set output
