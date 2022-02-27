#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'vytezek.tex'

set title
set xlabel 'protonové číslo Z'
set ylabel 'výtěžek (cps)'
set grid x,y
set yrange[0:100]
set xrange[20:60]
set key bottom right

f1(x)=a+b*x
f2(x)=A+B*x+C*x**2
f2C(x)=aa+bb*x+cc*x**2

fit f1(x) 'vytezek' via a,b
fit f2(x) 'vytezek' via A,B,C
fit f2C(x) 'vytezek' i 0 via aa,bb,cc


plot 'vytezek' ps 4 notitle, f1(x) lw 3 title "lineární fit", f2(x) lw 3 title "kvadratický fit"

set terminal wxt
set output
