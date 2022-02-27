#!/usr/bin/gnuplot

set terminal epslatex size 18cm,10cm
set output 'hist.tex'

set title
set xlabel '$v_x$ (\si{\mm\per\s})'
set ylabel 'počet částic'
set grid x,y
set yrange[0:15]
set xrange[0:50]
set xtics 5
set samples 20000


g(x)=a*exp(-(x-mean)**2/2/sigma**2)
fit g(x) 'hist' via a,mean,sigma

h(x)=b*exp(-(x-21.7584387321)**2/2/8.2392446296**2)
fit h(x) 'hist' via b

u(x,t1)=(sgn(x-t1)-sgn(x-t1-5))/2
f(x)=5*u(x,5)+10*u(x,10)+11*u(x,15)+13*u(x,20)+14*u(x,25)+4*u(x,30)+3*u(x,35)+1*u(x,40)

set arrow 3 from mean,0 to mean,g(mean) nohead ls 3 lw 3
set arrow 4 from (mean-sigma),g(mean-sigma) to (mean+sigma),g(mean+sigma) heads ls 4 lw 3

set label 1 '$\mu$' at (mean+1),3 left
set label 2 '$2\sigma$' at 16,9

plot f(x) lw 4 title 'histogram', g(x) lw 3 title 'normální rozdělení'

unset arrow 4
unset arrow 3
unset label 1
unset label 2

set terminal wxt
set output
