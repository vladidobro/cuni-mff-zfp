set terminal png enhanced size 1024, 768
set output 'gyf.png'

set title
set xrange [0:5000]
set yrange [0:450]
set xlabel 'F (N)'
set ylabel 'y0 (mm)'
set key top left
set grid x,y

plot 'gyf.dat' using 2:3 title "A", '' using 4:5 title "B" , '' using 6:7 title "C", '' using 8:9 title "D", '' using 10:11 title "E", 0.033230305*x ls 1 notitle, 0.136404958*x ls 2 notitle, 0.028166447*x ls 3 notitle, 0.291923605*x ls 4 notitle, 0.065919573*x ls 5 notitle
