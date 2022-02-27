set terminal epslatex size 18cm,12cm
set output 'skrob.tex'

set title
set ylabel 'Dynamická viskozita (\si{\milli\Pa\s})'
set xlabel 'Frekvence otáčení (\si{\per\minute})'
set grid x,y
set yrange[500:10000]
set xrange[2:200]
set logscale xy
set key spacing 5

m=15000
n=0.5
eta(x) = m*x**(n-1)
fit eta(x) 'skrob' via m,n

#linfit(x) = a*x+b
#fit linfit(x) 'skrob' u (log($1)):(log($2)) via a,b


plot 'skrob' index 0 ls 1 ps 5 lw 2 title 'L2', '' index 1 ls 2  ps 5 lw 2 title 'L3', eta(x) ls 1 lw 3 notitle
#, exp(b)*x**a



set terminal wxt
set output
