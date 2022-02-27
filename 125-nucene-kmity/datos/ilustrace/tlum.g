set terminal epslatex size 18cm,12cm
set output 'tlumpuvodni.tex'

set title
set xlabel 'Čas (\si{\s})'
set ylabel 'Výchylka'
set grid x,y
set yrange[-0.6:0.6]
set xrange[0:30]
set ytics 1
set format y

A=0.468316
d=0.0378395
c=-0.0572011158

fp(x) = A*exp(-d*x)+c
fm(x) = -A*exp(-d*x)+c

plot 'mtorig' lw 2 ps 5 notitle, c ls 2 lw 3   notitle, fp(x) ls 1 lw 2 notitle, fm(x) ls 1 lw 2 notitle


set terminal wxt
set output
