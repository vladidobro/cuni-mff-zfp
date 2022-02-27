#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm color colortext
set output 'graf.tex'

set xrange [0:1000000]
set yrange [0:1000000]


f(x)=p*x
fit f(x) 'afit' u 2:1 via p


set title
set xlabel '$I$ (\si{\ampere})'
set ylabel '$\alpha$ (\si{\radian})'
set grid x,y
set yrange[0:0.12]
set xrange[0:4.5]
set key top left


moment=0.0006643639



plot 'm5' lw 5 ps 5 title 'Malá cívka 5 závitů', 'm10' ls 4 pt 8 lw 3 ps 5 title 'Malá cívka 10 závitů', 'v5' lw 3 ps 5 title 'Velká cívka 5 závitů', 'v10' ls 2 lw 3 ps 5 title 'Velká cívka 10 závitů', p*x*5/2/moment/0.1 ls 1 lw 3 notitle, p*x*10/2/moment/0.1 ls 4 lw 3 notitle, p*x*5/2/moment/0.2025 ls 3 lw 3 notitle, p*x*10/2/moment/0.2025 ls 2 lw 3 notitle

set terminal wxt
set output
