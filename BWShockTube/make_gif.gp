# Set output file format and name
set terminal gif animate delay 20
set output "density_pressure.gif"

# Set axis labels
set xlabel "x"
set ylabel ""

# Set plot range
set xrange [-0.5:0.5]
#set yrange [0:1]

# Loop through data files and plot
do for [i=0:25] {
    # Generate filename
    file_num = sprintf("%05d", i)
    filename = "Brio-Wu.block0.out1." . file_num . ".tab"

    # Plot data
    plot filename using 2:3 with lines title "density" linewidth 2,\
         filename using 2:4 with lines title "pressure" linewidth 2
}
