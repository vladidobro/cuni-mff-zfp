set terminal epslatex size 18cm,12cm
set output 'faz.tex'

set title
set xlabel 'Frekvence budící síly (\si{\hertz})'
set ylabel 'Fázový posun (\si{\degree})'
set grid x,y
set yrange[0:-220]
set xrange[1.04:1.14]
set ytics 45


plot 'faze' lw 3 ps 5 notitle


set terminal wxt
set output
