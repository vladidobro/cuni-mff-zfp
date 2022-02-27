#set terminal epslatex size 18cm,12cm color colortext
#set output '../graf1.tex'

set title
set xlabel ''
set ylabel ''
set grid x,y
set yrange[0:0.8]
set xrange[0:30]

oranz(x) = a * exp(-delta*x)
fit oranz(x) 'oranztlum' via a, delta

plot oranz(x), 'oranztlum'


set terminal wxt
set output
