#!/bin/bash
touch ~/.conkyrc
echo "" > ~/.conkyrc

echo "conky.config = {
    alignment = 'top_right',
    background = false,
    border_width = 1,
    cpu_avg_samples = 2,
	default_color = 'white',
    default_outline_color = 'white',
    default_shade_color = 'white',
    draw_borders = false,
    draw_graph_borders = true,
    draw_outline = false,
    draw_shades = false,
    use_xft = true,
    font = 'DejaVu Sans Mono:size=12',
    gap_x = 5,
    gap_y = 60,
    minimum_height = 5,
	minimum_width = 5,
    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_stderr = false,
    extra_newline = false,
    own_window = true,
    own_window_class = 'Conky',
    own_window_type = 'desktop',
    stippled_borders = 0,
    update_interval = 1.0,
    uppercase = false,
    use_spacer = 'none',
    show_graph_scale = false,
    show_graph_range = false
}" >> ~/.conkyrc



time=false
uptime=false
frequencyMhz=false
frequencyGhz=false
ramUsage=false
swapUsage=false
cpuUsage=false
processesRunning=false
fileSystems=false
networking=false
singleProcesses=false



#ans=$(zenity  --list  --text "Conky Generator" --checklist  --column "Pick" --column "options" FALSE "Zużycie procesora" FALSE "Dostępna pamięć na dysku" FALSE "Zajęta pamięć" FALSE "Zużycie rdzeni procesora" FALSE "Szybkość rdzeni" FALSE "Obciążenie rdzeni" FALSE "Ping" FALSE "Upload" FALSE "Download" FALSE "Obciążenie otwartych aplikacji" FALSE "Dzisiejsza data" FALSE "Aktualna godzina" FALSE "Ilość partycji" FALSE "Obciążenie parycji" FALSE "Stopien naładowania baterii" --separator=":");
#echo $ansKud


if $time
	then
		echo "">> ~/.conkyrc
fi

if $uptime
	then
		echo "">> ~/.conkyrc
fi

if $frequencyMhz
	then
		echo "">> ~/.conkyrc
fi

if $frequencyGhz
	then
		echo "">> ~/.conkyrc
fi

if $ramUsage
	then
		echo "">> ~/.conkyrc
fi

if $swapUsage
	then
		echo "">> ~/.conkyrc
fi

if $cpuUsage
	then
		echo "">> ~/.conkyrc
fi

if $processesRunning
	then
		echo "">> ~/.conkyrc
fi

if $fileSystems
	then
		echo "">> ~/.conkyrc
fi

if $networking
	then
		echo "">> ~/.conkyrc
fi

if $singleProcesses
	then
		echo "">> ~/.conkyrc
fi


echo "conky.text = [[
	\${scroll 16 \$nodename - \$sysname \$kernel on \$machine | }
	\$hr
	
	\${color grey}Time:\$color \${time %H:%M}
	
	\${color grey}Uptime:\$color \$uptime

	\${color grey}Frequency (in MHz):\$color \$freq

	\${color grey}Frequency (in GHz):\$color \$freq_g

	\${color grey}RAM Usage:\$color \$mem/\$memmax - \$memperc% \${membar 4}

	\${color grey}Swap Usage:\$color \$swap/\$swapmax - \$swapperc% \${swapbar 4}

	\${color grey}CPU Usage:\$color \$cpu% \${cpugauge 40}

	\${color grey}Processes:\$color \$processes  \${color grey}Running:\$color \$running_processes
	\$hr
	\${color grey}File systems:
	 / \$color\${fs_used /}/\${fs_size /} \${fs_bar 4 /}

	\${color grey}Networking:
	Up:\$color \${upspeed eth0} \${color grey}  -  Down:\$color \${downspeed eth0}
	\$hr
	\${color grey}Name              PID   CPU%   MEM%
	\${color lightgrey} \${top name 1} \${top pid 1} \${top cpu 1} \${top mem 1}
	\${color lightgrey} \${top name 2} \${top pid 2} \${top cpu 2} \${top mem 2}
	\${color lightgrey} \${top name 3} \${top pid 3} \${top cpu 3} \${top mem 3}
	\${color lightgrey} \${top name 4} \${top pid 4} \${top cpu 4} \${top mem 4}

]]" >> ~/.conkyrc



