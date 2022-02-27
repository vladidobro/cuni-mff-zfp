#!/usr/bin/gnuplot

set terminal epslatex size 12cm,8cm
set output 'RCc.tex'

set title
set xlabel '$R$ (\si{\kilo\ohm})'
set ylabel '$\tau$ (\si{\milli\second})'
set grid x,y
set yrange[0.1:100]
set xrange[0.1:100]
set key bottom right
set logscale xy

C=1
plot 'RCc' u 1:2 lw 2 ps 4 notitle, C*x lw 2 title '$\tau=RC$'

set terminal wxt
set output
