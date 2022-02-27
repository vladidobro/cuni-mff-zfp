#!/usr/bin/gnuplot

set terminal epslatex size 14cm,7cm
set output 'proud.tex'

set title
set xlabel 'proud výbojovou trubicí (\si{\mA})'
set ylabel 'relativní intenzita'
set grid x,y
set yrange[65:85]
set xrange[4:7]
set key bottom right



plot 'proud' ls 1 ps 4 lw 3 notitle, 'proud' ls 1 lw 3 smooth csplines notitle

set terminal wxt
set output
