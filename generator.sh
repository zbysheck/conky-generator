#!/bin/bash

#Sekcja opcji, v-wersja, h-pomoc

while getopts "a v h" opt; do
  case $opt in
	a)
		echo "kek" >&2
		exit 1
		;;
    v)
		echo "Conky Generator v1.0" >&2     
     	exit 1
    	;;
    h)
     	echo "-h was triggered!<-------------------dopisac kekek" >&2
     	exit 1
     	;;
    \?)
     	echo "Invalid option: -$OPTARG" >&2
     	;;
  esac
done

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



time=true
uptime=true
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
#echo $ans

echo "conky.text = [[\${scroll 16 \$nodename - \$sysname \$kernel on \$machine | }
	\$hr">> ~/.conkyrc
if $time
	then
		echo "\${color grey}Time:\$color \${time %H:%M}">> ~/.conkyrc
fi

if $uptime
	then
		echo "\${color grey}Uptime:\$color \$uptime">> ~/.conkyrc
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

echo "]]" >> ~/.conkyrc






