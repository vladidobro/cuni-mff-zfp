#!/usr/bin/gnuplot

set terminal epslatex size 18cm,8cm
set output 'typ.tex'

set title
set xlabel 'čas (\si{\ms})'
set ylabel 'intenzita'
unset ytics
unset key
set samples 40000


plot 'ane1m4o.txt' lw 3 smooth csplines notitle

set terminal wxt
set output
