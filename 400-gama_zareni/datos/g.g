#!/usr/bin/gnuplot

set terminal epslatex size 18cm,14cm color colortext

set samples 200000

cal(x)=x*0.352572-0.191745

set title
set xlabel '$E$ (\si{\keV})'
set ylabel 'výtěžek'
set grid x,y
set logscale y


set arrow 1 from 473, 10 to 473, 1000 nohead
set label 1 at 473, 1100 'comptonova hrana' center
set arrow 2 from 565, 10 to 565, 1500 nohead
set label 2 at 565, 1700 'dvojný compton' center
set arrow 3 from 186, 10 to 186, 1000 nohead
set label 3 at 184, 1100 'zpětný rozptyl' center
set label 4 at 609, 250 '\shortstack{přirozené\\prostředí}' center
set label 5 at 652, 5000 'FEP' right


set output 'cs_sp.tex'
set yrange[10:11000]
set xrange[100:700]
plot 'cs.dat' u (cal($0)):1 w lines notitle


unset logscale y
set label 1 at 1360, 420 'FEP1' right
set label 2 at 1732, 190 'DEP2' center
set label 3 at 2243, 90 'SEP2' center
set label 4 at 2754, 320 'FEP2' center
set label 5 at 510.50, 150 'anih.' center
set label 6 at 609, 250 '\shortstack{přirozené\\prostředí}' center
set arrow 1 from 1145, 0 to 1145, 200 nohead
set arrow 2 from 1267, 0 to 1267, 200 nohead
set label 8 at 1300, 220 '\shortstack{comptonovy\\hrany (FEP1)}' right
set arrow 3 from 186, 0 to 186, 500 nohead
set label 7 at 210, 410 'zpětný rozptyl' left
set arrow 4 from 2515, 0 to 2515, 200 nohead
set arrow 5 from 2648, 0 to 2648, 200 nohead
set label 9 at 2670, 220 '\shortstack{comptonovy\\hrany (FEP2)}' right


#set terminal wxt
#set output
set output 'nacl_sp.tex'
set yrange[0:500]
set xrange[100:2890]
plot 'nacl.dat' u (cal($0)):1 w lines notitle



unset arrow 1; unset arrow 2; unset arrow 3; unset arrow 4; unset arrow 5;
unset label 1; unset label 2; unset label 3; unset label 4; unset label 5; unset label 6; unset label 7; unset label 8; unset label 9;
unset logscale y
set terminal wxt
set output
