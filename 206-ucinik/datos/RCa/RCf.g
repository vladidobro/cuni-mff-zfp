#!/usr/bin/gnuplot

set terminal epslatex size 14cm,10cm
set output 'RCf.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$\varphi$ (\si{\degree})'
set grid x,y
set yrange[-90:0]
set xrange[0:11]
set key bottom left

plot 'RC' i 0 u 1:(-$3) ps 3 lw 3 title 'sériový', '' i 1 u 1:(-$3) ps 3 lw 3 title 'paralelní'

set terminal wxt
set output
