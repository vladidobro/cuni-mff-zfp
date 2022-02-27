#!/usr/bin/gnuplot

set terminal epslatex size 11cm,7cm
set output 'druhy.tex'

set title
set xlabel '$I$ (\si{\milli\ampere})'
set ylabel '$C$ (\si{\micro\farad})'
set y2label '$\tau$ (\SI{e-2}{\second})'
set grid x,y
set yrange[0:15]
set xrange[0:0.7]
set y2range[0:15]
set y2tics
set key bottom right
set key spacing 5


f(x)=a*x
fit f(x) 'data2' u 1:2 via a


set label 1 '$C(\si{\micro\farad})=\num{17.0} \cdot I(\si{\milli\ampere})$' at 0.4,5 rotate by 30 tc ls 1
set label 2 '$\tau = \SI{13.7e-2}{\second}$' at 0.1,12 rotate by 0 tc ls 1


plot 'data2' u 1:2 lw 2 ps 5 title '$C$', '' u 1:3 lw 2 ps 5 title '$\tau$', f(x) ls 1 lw 2 notitle, 13.7 ls 2 lw 2 notitle


unset label 1
unset label 2
set terminal wxt
set output
