set terminal epslatex size 12cm,8cm color colortext
set output 'grafdisk.tex'

set title
set xlabel '$p \text{[Pa]}$'
set ylabel '$Q_v [ml \cdot s^{-1}]$'
set grid x,y
set xrange [0:400]
set yrange [0:6]
set key bottom right



plot 'deg.dat' ls -1 pt 7 with xyerrorbars notitle, 0.030241318*x-4.606206539 ls -1 notitle, 0.022271682*x-2.62200526 ls -1 notitle


set terminal wxt
set output
