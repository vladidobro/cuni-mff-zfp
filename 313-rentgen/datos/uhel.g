#!/usr/bin/gnuplot

set terminal epslatex size 18cm,8cm
set output 'uhel.tex'

set title
set xlabel 'úhel (\si{\degree})'
set ylabel 'intenzita'
set grid x,y
set yrange[0:2800]
set xrange[10:50]
set samples 20000
unset ytics

plot 'uhel' ps 4 lw 4 with linespoints notitle


set terminal wxt
set output
