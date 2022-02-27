set terminal epslatex size 10cm,7cm
set output 'grafdelka.tex'

set title
set xlabel '$k$'
set ylabel '$l(\si{\mm})$'
set grid x,y
set yrange[700:900]
set xrange[12.25:15.75]
set xtics 1

f(x) = vzl*x
fit f(x) 'vzduchl.dat' via vzl

plot 'vzduchl.dat' lw 3 ps 5  notitle, f(x) ls 1 lw 3 notitle


set terminal wxt
set output
