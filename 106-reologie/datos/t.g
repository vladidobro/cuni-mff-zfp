set terminal epslatex size 18cm,12cm
set output 'kulickovej.tex'

set title
set ylabel 'Dynamická viskozita (\si{\milli\Pa\s})'
set xlabel 'Teplota (\si{\degreeCelsius})'
set grid x,y
set yrange[300:1000]
set xrange[24:36]
unset logscale xy
set key spacing 5



plot 'glyctep' ps 5 lw 2 notitle


set terminal wxt
set output
