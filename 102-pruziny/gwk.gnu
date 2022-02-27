set terminal png enhanced size 1024, 768
set output 'gwk.png'

set title
set xrange [0:7]
set yrange [0:20]
set xlabel 'k (N/m)'
set ylabel 'ω (1/s)'
set key top left
set grid x,y


a(x) = a*x
fit a(x) './gwk.dat' index 1 u 1:2  via a

b(x) = b*x
fit b(x) './gwk.dat' index 1 u 1:3  via b

c(x) = c*x
fit c(x) './gwk.dat' index 1 u 1:4  via c

d(x) = d*x
fit d(x) './gwk.dat' u 1:5  via d

plot 'gwk.dat' using 1:2 title "100 g", '' using 1:3 title "120 g" , '' using 1:4 title "150 g", '' using 1:5 title "250 g", a(x) ls 1 notitle, b(x) ls 2 notitle, c(x) ls 3 notitle, d(x) ls 4 notitle
