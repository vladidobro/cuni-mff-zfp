#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'zesil.tex'

set title
set xlabel '$I_B$ (\si{\milli\ampere})'
set ylabel '$I_C$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:50]
set xrange[0:0.35]
set key top left
set key spacing 5

a1(x)=b1*x
a2(x)=b2*x
a3(x)=b3*x
fit a1(x) 'zesil2' u 1:3 via b1
fit a2(x) 'zesil6' u 1:3 via b2
fit a3(x) 'zesil10' u 1:3 via b3

plot 'zesil2' u 1:3:2:4 ls 1 lw 2 ps 5 with xyerrorbars title '$U_{BE}=\SI{2}{\volt}$', 'zesil6' u 1:3:2:4 ls 2 lw 2 ps 5 with xyerrorbars title '$U_{BE}=\SI{6}{\volt}$', 'zesil10' u 1:3:2:4 ls 3 lw 2 ps 5 with xyerrorbars title '$U_{BE}=\SI{10}{\volt}$', b2*x lw 3 notitle


print b1
print b2
print b3

set terminal wxt
set output
