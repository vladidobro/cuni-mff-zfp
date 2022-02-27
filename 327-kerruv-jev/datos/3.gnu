#!/usr/bin/gnuplot

set terminal epslatex size 18cm,10cm
set output '3.tex'

set title
set xlabel '$U$ (\si{\volt})'
set ylabel '$I/I_0$'
set grid x,y
set xrange[0:1100]
set yrange [0:1.1]
set samples 10000
set key top left




plot 'konecny' i 0 u 1:2 ls 1 ps 3 lw 3 title 'první měření', '' i 1 u 1:2 ls 2 ps 3 lw 3 title 'druhé měření'

set terminal wxt
set output
