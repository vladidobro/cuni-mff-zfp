#!/usr/bin/gnuplot

set terminal epslatex size 7cm,6cm
set output 'ctv.tex'

set title
set xlabel 'řád minima'
set ylabel 'relativní poloha (\si{\mm})'
set grid x,y
set yrange[-12:10]
set xrange[-14:16]

f(x)=a*x+b
fit f(x) 'ctv' i 0 via a,b

plot 'ctv' i 0 ps 2 lw 1 notitle, f(x) lw 1 notitle

set terminal wxt
set output

set terminal epslatex size 7cm,6cm
set output 'ctvP2.tex'

set title
set xlabel 'řád minima'
set ylabel 'relativní poloha (\si{\mm})'
set grid x,y
set yrange[-12:12]
set xrange[-5:5]

f(x)=a*x+b
fit f(x) 'ctv' i 1 via a,b

plot 'ctv' i 1 ps 2 lw 1 notitle, f(x) lw 1 notitle

set terminal wxt
set output


set terminal epslatex size 9cm,6cm
set output 'ctv2P4.tex'

set title
set xlabel 'řád minima'
set ylabel 'relativní poloha (\si{\cm})'
set grid x,y
set yrange[-3.5:3.5]
set xrange[-11:11]

f(x)=a*x+b
fit f(x) 'ctv' i 2 via a,b

plot 'ctv' u 1:($2-b) i 2 ps 2 lw 1 notitle, f(x)-b lw 1 notitle

set terminal wxt
set output