#!/usr/bin/gnuplot

set grid x,y
set xlabel '$H_m$ (\si{\ampere\per\metre})'
set ylabel '$H_C$ (\si{\ampere\per\metre})'
set terminal epslatex size 14cm,9cm

set title 'Kroužek I - $H_C$'
set output 'hc1.tex'
set yrange[0:20]
set xrange[0:150]
plot 'h' i 0 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle

set title 'Kroužek II - $H_C$'
set output 'hc2.tex'
set yrange[0:55]
set xrange[0:240]
plot 'h' i 1 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle

set title 'Kroužek III - $H_C$'
set output 'hc3.tex'
set yrange[0:2100]
set xrange[0:7000]
plot 'h' i 2 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle

set terminal wxt
set output
