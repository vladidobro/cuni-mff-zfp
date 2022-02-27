set terminal epslatex size 18cm,12cm
set output 'amp.tex'

set title
set xlabel 'Frekvence budící síly (\si{\hertz})'
set ylabel 'Amplituda'
set grid x,y
set format y ""
set yrange[0:1.1]
set xrange[1.04:1.14]



plot 'ampl' lw 3 ps 5 notitle


set terminal wxt
set output
