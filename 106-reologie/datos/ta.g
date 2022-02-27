set terminal epslatex size 18cm,12cm
set output 'kulickovejadapt.tex'

set title
set ylabel '$\ln(\frac{\eta}{\SI{1}{\milli\pascal\s}}$)'
set xlabel '$\frac{1}{T}$ (\si{\per\kelvin})'
set grid x,y
set yrange[5.95:6.85]
set xrange[0.00324:0.00336]
unset logscale xy
set key spacing 5
set ytics 0.2

f(x)= a*x+b
fit f(x) 'tepadapt' via a,b

plot 'tepadapt' ps 5 lw 2 notitle, f(x) ls 1 lw 3 notitle


set terminal wxt
set output
