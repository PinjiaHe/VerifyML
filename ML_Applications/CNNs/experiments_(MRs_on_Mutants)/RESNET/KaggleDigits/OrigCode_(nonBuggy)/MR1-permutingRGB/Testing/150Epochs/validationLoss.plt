set terminal wxt
set size square
set key font "courier,15"
set key noenhanced
set datafile separator ","
#set title 'Cifar Data MR1 Original 150 Epochs' font ",18"
set xlabel 'steps' font ",22"
set ylabel 'validation loss' font ",22"
set key maxcols 2 height 3
set key inside autotitle columnheader 
set colors classic

set for[i=1:10] linetype i dashtype  1


#set xrange [*:*]
set autoscale x
#set yrange [*:*]
set autoscale y
set ytics 1
plot 'combinedData.csv' using 1:2 w lp lw 2 lt 1 pt 2  ps 1.25 lc 0,\
     'combinedData.csv' using 4:5 w  lp lw 2 lt 2 pt 4  ps 1.25 lc 1,\
	 'combinedData.csv' using 7:8 w lp lw 2 lt 3 pt 6  ps 1.25 lc 3,\
	 'combinedData.csv' using 10:11 w lp lw 2  lt 4 pt 5  ps 1.25 lc 2,\
	 'combinedData.csv' using 13:14 w lp lw 2 lt 5 pt 12  ps 1.25  lc 7,\
	 'combinedData.csv' using 16:17 w lp lw 2 lt 6 pt 1  ps 1.25  lc 4