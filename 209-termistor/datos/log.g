#!/usr/bin/gnuplot

reset

set terminal epslatex size 18cm,12cm
set output 'logplot.tex'

set title
set xlabel '$1/T$ (\si{\per\kelvin})'
set ylabel '$log(R/\SI{1}{\ohm})$'
set grid x,y
set yrange[-1:2.4]
set xrange[0.002:0.0057]
set key top left


f(x)=a+0.434*B*x
fit f(x) 'logdata' via B,a

plot 'logdata' ls 1 ps 2 lw 2 notitle, f(x) lw 2 title '$\log R = -\num{4.156} + 1165 \cdot 1/T$'


reset

set output
set terminal wxt