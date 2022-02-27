set terminal epslatex size 18cm,12cm
set output 'tlumenymodry.tex'

set title
set xlabel 'Čas (\si{\s})'
set ylabel 'Amplituda'
set grid x,y
set format y ""
set yrange[0:0.5]
set xrange[0:30]

modr(x) = a * exp(-delta*x)
fit modr(x) 'modrejtlum' via a, delta

plot modr(x) lw 2 notitle, 'modrejtlum' ls 1 lw 3 ps 5 notitle


set terminal wxt
set output
