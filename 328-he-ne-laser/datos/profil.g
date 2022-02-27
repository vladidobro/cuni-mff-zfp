#!/usr/bin/gnuplot

set terminal epslatex size 18cm,10cm
set output 'profil.tex'

set title
set xlabel '$x$ (\si{\mm})'
set ylabel '$I$'
set grid x,y
set yrange[0:90]
set xrange[15.40:16.80]


A=82
mu=16.2
sigma=0.5
f(x)=A*exp(-(x-mu)**2/sigma**2)
fit f(x) 'profil' via A,mu,sigma



plot 'profil' ls 1 ps 4 lw 3 title 'naměřené hodnoty', f(x) ls 2 lw 3 title 'fit Gaussovou funkcí'

set terminal wxt
set output
