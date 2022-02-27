#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'hranol.tex'

set title
set xlabel '$\lambda$ (\si{\nm})'
set ylabel '$n$'
set grid x,y
set xrange[400:700]
set key top right


set yrange[1.507:1.527]
h(x)=Nh+ah/(x+xh)
fit h(x) 'graf' u 1:2 via Nh,ah,xh
plot 'graf' u 1:2 ls 1 ps 4 notitle, h(x) ls 1 lw 3 notitle

set terminal wxt
set output
set terminal epslatex size 18cm,12cm
set output 'kap.tex'

set yrange[1.327:1.342]
k(x)=Nk+ak/(x+xk)
fit k(x) 'graf' u 1:3 via Nk,ak,xk
plot 'graf' u 1:3 ls 1 ps 4 notitle, k(x) ls 1 lw 3 notitle

set terminal wxt
set output