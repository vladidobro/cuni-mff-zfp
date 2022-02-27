#!/usr/bin/gnuplot

set terminal epslatex size 18cm,10cm color colortext
set output '2.tex'

set title
set xlabel 'čas'
set ylabel '$I/I_0$' tc lt 1
set grid x,y2
set xrange[0:2046]
set xtics 120.4
set yrange [0:1.1]
set y2range [0:1100]
set xtics format ""
set nokey
set samples 10000

set ytics 0.2 nomirror tc lt 1
set y2tics 100 nomirror tc lt 2
set y2label '$U$ (\si{\volt})' tc lt 2

dx=120.4
u(x,t)=(1+sgn(x-t*dx))/2
f(x)=50*( 3+3*u(x,1)+2*u(x,2)+u(x,3)+u(x,4)+u(x,5)+u(x,6)+u(x,7)+u(x,8)+u(x,9)+u(x,10)+0.5*u(x,11)+0.5*u(x,12)+0.5*u(x,13)+0.5*u(x,14)+u(x,15)+u(x,16) )

plot 'druhy' u 3:4 lt 1 lw 3 ps 0.5, f(x) lt 1 lc 2 lw 4 axes x1y2

set terminal wxt
set output
