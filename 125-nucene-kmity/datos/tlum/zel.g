#set terminal epslatex size 18cm,12cm color colortext
#set output '../graf1.tex'

set title
set xlabel ''
set ylabel ''
set grid x,y
set yrange[0:0.8]
set xrange[0:30]

zel(x) = a * exp(-delta*x)
fit zel(x) 'zeltlum' via a, delta

plot zel(x), 'zeltlum'


set terminal wxt
set output
