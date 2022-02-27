set terminal epslatex size 18cm,12cm
set output 'graf.tex'

set title
set xlabel 'Koncentrace lihu (\si{\percent})'
set ylabel 'Povrchové napětí (\num{e-3}\,\si{\newton\per\metre})'
set grid x,y
set xrange[0:100]
set yrange[20:80]



plot 'napeti.dat' index 1 u 1:($2*1000) lw 3 ps 5 notitle, 'napeti.dat' index 0 u 1:($2*1000) smooth csplines ls 2 lw 3 notitle



set terminal wxt
set output
