set terminal epslatex size 18cm,12cm
set output 'glycerin.tex'

set title
set ylabel 'Dynamická viskozita (\si{\milli\Pa\s})'
set xlabel 'Frekvence otáčení (\si{\per\minute})'
set grid x,y
set yrange[500:1000]
set xrange[0.5:500]
set logscale x

fit eta 'glycerin' via eta
set key spacing 5

plot 'glycerin' index 0 ls 1 ps 5 lw 2 title 'L1', '' index 1 ls 2  ps 5 lw 2 title 'L2', '' index 2 ls 3  ps 5 lw 2 title 'L3', '' index 3 ls 4  ps 4 lw 2 title 'L4', eta ls 1 lw 3 notitle


set terminal wxt
set output
