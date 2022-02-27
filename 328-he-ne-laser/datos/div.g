#!/usr/bin/gnuplot

set terminal epslatex size 14cm,7cm
set output 'div.tex'

set title
set xlabel '$s$ (\si{\cm})'
set ylabel '$D$ (\si{\micro\metre})'
set grid x,y
set yrange[0:4500]
set xrange[0:250]
set key bottom right
set key spacing 3
set ytics 1000

f(x)=d*x+b
fit f(x) 'div' u 1:3 via d,b

plot 'div' u 1:2 ls 1 ps 4 lw 3 title 'beam width clip', 'div' u 1:3 ls 2 ps 4 lw 3 title 'gaussian diameter', f(x) ls 2 lw 3 title 'lineární fit $y=12.5\cdot x + 1050$'

set terminal wxt
set output
