set terminal png enhanced size 1024, 768
set output 'gwm.png'

set title
set xrange [0:5]
set yrange [0:20]
set xlabel '1/m (kg)'
set ylabel 'ω (1/s)'
set key top left
set grid x,y



plot 'gwm.dat' index 0 title "A", '' index 1 title "B" , '' index 2 title "C", '' index 3 title "D", '' index 4 title "E", 5.506138881*x ls 1 notitle, 2.672757593*x ls 2 notitle, 1.817258777*x ls 4 notitle, 3.876265413*x ls 5 notitle, 5.427378338*x ls 3 notitle
