#!/usr/bin/gnuplot

set terminal epslatex size 14cm,10cm
set output 'RLCP.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$P$ (\si{\watt})'
set grid x,y
set yrange[0:1.8]
set xrange[0:11]
set key bottom left

plot 'RLC' u 1:4 ps 3 lw 3 notitle

set terminal wxt
set output
