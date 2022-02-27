set terminal epslatex size 18cm,12cm color colortext
set output 'graf1.tex'

set title
set xlabel '$p \text{[Pa]}$'
set ylabel '$Q_v [ml \cdot s^{-1}]$'
set grid x,y
set yrange[0:14]
set xrange[0:3000]

set label 1 'trubice A' at 1500,1.8 rotate by 10 tc ls 1
set label 2 'trubice B' at 600,3 rotate by 36 tc ls 2
set label 3 'trubice C' at 500,8 rotate by 35 tc ls 3



c(x)=c*x+cc
fit c(x) 'cfit.dat' u 1:2 via c,cc

b(x)=b*x+bb
fit b(x) 'bfit.dat' u 1:2 via b,bb

a(x)=a*x+aa
fit a(x) 'afit.dat' u 1:2 via a,aa

plot 'a.dat' lw 2 with xyerrorbars notitle, 'b.dat' ls 1 lw 2 linecolor 2 with xyerrorbars notitle , 'c.dat' ls 1 lw 2  linecolor 3 with xyerrorbars notitle, x <= 2300 ? a(x):1/0 ls 1 lw 2 linecolor 1 notitle, x <= 900 ? b(x):1/0 ls 1 lw 2 linecolor 2 notitle, x <= 400 ? c(x):1/0 ls 1 lw 2 linecolor 3 notitle

unset label 1
unset label 2
unset label 3

set terminal wxt
set output
