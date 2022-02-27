#!/usr/bin/gnuplot

set terminal epslatex size 12cm,8cm
set output 'RCr.tex'

set title
set xlabel '$C$ (\si{\micro\farad})'
set ylabel '$\tau$ (\si{\milli\second})'
set grid x,y
set yrange[0.1:100]
set xrange[0.1:100]
set key bottom right
set logscale xy

R=1
plot 'RCr' u 1:2 lw 2 ps 4 notitle, R*x lw 2 title '$\tau=RC$'

set terminal wxt
set output
