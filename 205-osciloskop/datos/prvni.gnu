#!/usr/bin/gnuplot

set terminal epslatex size 11cm,7cm
set output 'prvni.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$U$ (\si{\volt})'
set grid x,y
set yrange[2.5:8]
set xrange[0:11]

plot 'data1' lw 2 ps 4 notitle

set terminal wxt
set output
