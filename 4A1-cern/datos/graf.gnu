#!/usr/bin/gnuplot



set title
set xlabel 'N'
set ylabel 'nejistota střední hodnoty (\si{\GeV\per $c^2$})'
set grid x,y
set yrange[0:0.7]
set xrange[0:1500]

set terminal epslatex size 10cm,8cm
set output 'chyby.tex'

f(x)=c/sqrt(x)
fit f(x) 'poisson' u 1:3 via c
plot 'poisson' u 1:3 ps 4 lw 2 title 'naměřená data', f(x) ls 1 lw 3 title '$5,57/\sqrt{N}$'

set terminal wxt
set output
