##	Gnuplot script
##
##	Generating the performance graph for nmf_mu
##
##	Input file:	gnuplot_data_mu
##
###################################################


# file output settings - filename and terminal
##############################################

set term postscript eps enhanced dashed color
set output "nmf_mu.eps"


# labels and title
##################

set xlabel "Matrix dimension"
set xtics (1000,2000,3000,4000,5000)
set ylabel "microseconds"
set title "Multiplicative Update \n k=250 - maxiter=100 - Lapack 3.2.1 - GCC 4.2.4 - Linux 2.6.16 - SUN Fire X4600 M2"


# key position
##################

set key left

# plot data
############

plot "gnuplot_data_mu" using 1:2 with lp title "Matlab 2009a", "gnuplot_data_mu" using 1:3 with lp title "GOTO 1.26", "gnuplot_data_mu" using 1:4 with lp title "ATLAS 3.8.3", "gnuplot_data_mu" using 1:5 with lp title "ATLAS 3.9.11"