#!/usr/bin/gnuplot

set terminal epslatex size 14cm,10cm
set output 'RLCf.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$\varphi$ (\si{\degree})'
set grid x,y
set yrange[-90:90]
set xrange[0:11]
set key bottom left
set ytics 30

plot 'RLC' u 1:7 ps 3 lw 3 notitle

set terminal wxt
set output
