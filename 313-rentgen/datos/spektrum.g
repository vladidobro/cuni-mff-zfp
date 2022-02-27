#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'spektrum.tex'

set title
set xlabel '$\lambda$ (\si{\pico\metre})'
set ylabel '$I$'
set grid x,y
set yrange[0:19000]
set xrange[0:210]
set samples 20000
set xtics 10

plot 'spektrum' u 2:3 ps 3 lw 3 with linespoints notitle


set terminal wxt
set output
