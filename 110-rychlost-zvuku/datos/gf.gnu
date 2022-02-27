set terminal epslatex size 14cm,9cm
set output 'graffrekvence.tex'

set title
set xlabel '$k$'
set ylabel '$f (\si{\Hz})$'
set grid x,y
set yrange[0:3500]
set xrange[0:20]


set label 1 'vzduch' at 8,2100 rotate by 37 tc ls 1
set label 2 'oxid uhličitý' at 11.5,1550 rotate by 28 tc ls 2

v(x)=vzf*x
fit v(x) 'vzduchf.dat' via vzf

o(x)=oxf*x
fit o(x) 'oxidf.dat' via oxf


plot 'vzduchf.dat' lw 3 ps 5  notitle, x<=15 ? v(x):1/0 ls 1 lw 3 notitle, 'oxidf.dat' ls 2 pt 1 lw 3 ps 5 notitle, x<=19 ? o(x):1/0 ls 2 lw 3 notitle

unset label 1
unset label 2

set terminal wxt
set output
