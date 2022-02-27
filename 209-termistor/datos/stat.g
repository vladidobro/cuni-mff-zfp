#!/usr/bin/gnuplot

reset

set terminal epslatex size 18cm,12cm
set output 'statplot.tex'

set title
set ylabel '$U$ (\si{\volt})'
set xlabel '$I$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:1.3]
set xrange[0:26]
set key top left



f(x)=a*x
fit f(x) 'statdata' i 0 via a


b=atan(a)*180/pi
set label 1 '$U(V)=\num{0.588} \cdot I(\si{\milli\ampere})$' at 2,0.2 rotate by 80 tc ls 1


plot 'statdata' i 0:1 ls 1 ps 2 lw 2 notitle, (x < 1.5) ? f(x) : 1/0  notitle


reset

set output
set terminal wxt

unset label 1