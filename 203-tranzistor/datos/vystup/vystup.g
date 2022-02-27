#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'vystup.tex'

set title
set xlabel '$U_{BE}$ (\si{\volt})'
set ylabel '$I_B$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:50]
set xrange[0:1.7]
set key top left
set key spacing 5

set label 1 '$I_B = \SI{0.1}{\milli\ampere}$' at 1,8  tc ls 1
set label 2 '$I_B = \SI{0.2}{\milli\ampere}$' at 1,21 tc ls 2
set label 3 '$I_B = \SI{0.3}{\milli\ampere}$' at 1,34 tc ls 3

plot 'vystup1' u 1:3:2:4 ls 1 lw 2 ps 5 with xyerrorbars notitle, 'vystup2' u 1:3:2:4 ls 2 lw 2 ps 5 with xyerrorbars notitle , 'vystup3' u 1:3:2:4 ls 3 lw 2 ps 5 with xyerrorbars notitle

unset label 1
unset label 2
unset label 3

set terminal wxt
set output
