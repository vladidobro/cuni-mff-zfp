set terminal epslatex size 10cm,8cm
set output 'nucenyilustrace.tex'

set title
set xlabel 'Čas (\si{\s})'
set ylabel 'Napětí'
unset grid
set yrange[-2:2]
set xrange[0:30]
set ytics 5
set format y ""
set format x ""


plot sin(x+0.2)-0.3  lw 3 notitle, 0 ls 1 lw 2 notitle, 0.7 ls 2 lw 2 notitle, -1.3 ls 2 lw 2 notitle

set terminal wxt
set output
