set terminal epslatex size 18cm,12cm
set output 'graf.tex'

set title
set xlabel '$l$ (\si{cm})'
set ylabel '$\kappa$'
set grid x,y
set yrange[0:0.1]
set xrange[0:35]
set key bottom right
set key font ",20"
set key spacing 5



#g(x) = a*x**2/(b+a*x**2)
f(x) = c*x**2
fit f(x) 'kappa.dat' via c 
#fit g(x) 'kappa.dat' via a,b 


plot 'kappa.dat' lw 3 with xyerror notitle, f(x) ls 1 lw 3 notitle

#, g(x) ls 2 lw 3 title '$ \kappa = \frac{a \cdot l^2}{b + a \cdot l^2}   $



set terminal wxt
set output
