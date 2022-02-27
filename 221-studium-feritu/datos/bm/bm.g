#!/usr/bin/gnuplot

set grid x,y
set xlabel '$H_m$ (\si{\ampere\per\metre})'
set ylabel '$B_m$ (\si{\tesla})'
set terminal epslatex size 14cm,9cm

set title 'Kroužek I - $B_m$'
set output 'bm1.tex'
set yrange[0:0.3]
set xrange[0:150]
plot 'b' i 0 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle

set title 'Kroužek II - $B_m$'
set output 'bm2.tex'
set yrange[0:0.25]
set xrange[0:240]
plot 'b' i 1 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle

set title 'Kroužek III - $B_m$'
set output 'bm3.tex'
set yrange[0:0.3]
set xrange[0:7000]
plot 'b' i 2 u 1:3:2:4 ls 1 lw 2 with xyerrorbars notitle, 'b' i 3 u 1:3:2:4 ls 2 lw 1 with xyerrorbars notitle

set terminal wxt
set output
