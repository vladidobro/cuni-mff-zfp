set terminal epslatex size 18cm,12cm color colortext
set output 'grafkre.tex'

set title
set xlabel '$Re$'
set ylabel '$k$'
set grid x,y
set yrange[0:0.06]
set xrange[0:3000]




plot 'a' ls 1 lw 2 linecolor 1 with xyerrorbars title 'Trubice A', 'b' ls 1 lw 2 linecolor 2 with xyerrorbars title 'Trubice B', 'c' ls 1 lw 2 linecolor 3 with xyerrorbars title 'Trubice C', x <= 2000 ? 16/x:1/0 ls 1 linecolor 4 lw 2 title '$16/Re$', x >= 800 ? 0.133/sqrt(sqrt(x)):1/0 ls 1 linecolor 5 lw 2 title '0,133/$\sqrt[4]{Re}$'




set terminal wxt
set output
