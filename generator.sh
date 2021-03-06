#!/bin/bash

#Sekcja opcji, v-wersja, h-pomoc

while getopts "a v h" opt; do
  case $opt in
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
echo "" > ~/.conkyrc   #RESET



echo "conky.config = {" >> ~/.conkyrc
ans=$(zenity --height 200 \
	--list \
 	--text "Wybierz róg" \
 	--radiolist \
 	--column "Pick" \
	 --column "Opinion" \
 	FALSE "Top left" \
 	FALSE "Top right" \
 	FALSE "Bottom right" \
 	FALSE "Bottom left");
echo $ans


IFS=":" ; for word in $ans ; do
	case $word in
		"Top left") echo "alignment = 'top_left'," >> ~/.conkyrc ;;
		"Top right") echo "alignment = 'top_right'," >> ~/.conkyrc ;;
		"Bottom right") echo "alignment = 'bottom_right'," >> ~/.conkyrc ;;
		"Bottom left") echo "alignment = 'bottom_left'," >> ~/.conkyrc ;;
	esac
done 

ans=$(zenity --list \
	--width 300 \
	--height 300 \
	--title="Wybierz czcionke" \
	--column="ID" --column="Czcionka" \
	1 "Monospace Regular" \
	2 "NanunBraunGothic Regular" \
	3 "Ubuntu Regular" \
	4 "NanunGothic Regular" \
	5 "NanumMyeongjo Regular" \
	6 "Nimbus Mono L Regular" \
	7 "Norasi Regular" \
	8 "Noto Sans CJK SC Black" \
	9 "DejaVu Sans Mono12"); 
echo $ans

	case $ans in
		"1") echo "font = 'Monospace Regular:size=12'," >> ~/.conkyrc ;;
		"2") echo "font = 'NanunBraunGothic Regular:size=12'," >> ~/.conkyrc ;;
		"3") echo "font = 'Ubuntu Regular:size=12'," >> ~/.conkyrc ;;
		"4") echo "font = 'NanunGothic Regular:size=12'," >> ~/.conkyrc ;;
		"5") echo "font = 'NanumMyeongjo Regular:size=12'," >> ~/.conkyrc ;;
		"6") echo "font = 'Nimbus Mono L Regular:size=12'," >> ~/.conkyrc ;;
		"7") echo "font = 'Norasi Regular:size=12'," >> ~/.conkyrc ;;
		"8") echo "font = 'Noto Sans CJK SC Black:size=12'," >> ~/.conkyrc ;;
		"9") echo "font = 'DejaVu Sans Mono12:size=12'," >> ~/.conkyrc ;;
	esac
 

echo "  
	own_window_colour = "black",
	own_window_transparent = "yes",
	
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


ans=$(zenity --width 500 \
	--height 350  \
	--list  \
	--text "Conky Generator" \
	--checklist \
	--column "Pick" \
	--column "options" \
	FALSE "Aktualny czas" \
	FALSE "Uptime" \
	FALSE "Szybkosc procesora w MHz" \
	FALSE "Szybkosc procesora w GHz" \
	FALSE "Zużycie pamięci RAM" \
	FALSE "Zużycie pamięci SWAP" \
	FALSE "Zużycie procesora" \
	FALSE "Procesy" \
	FALSE "Pliki systemowe" \
	FALSE "Upload i Download" \
	FALSE "Uruchomione procesy" \
	--separator=":");
echo $ans

echo "conky.text = [[\${scroll 16 \$nodename - \$sysname \$kernel on \$machine | }
    \$hr">> ~/.conkyrc

IFS=":" ; for word in $ans ; do
    case $word in
		"Aktualny czas") echo "\${color grey}Time:\$color \${time %H:%M}" >> ~/.conkyrc ;;
		"Uptime") echo "\${color grey}Uptime:\$color \$uptime" >> ~/.conkyrc ;;
		"Szybkosc procesora w MHz") echo "\${color grey}Frequency (in MHz):\$color \$freq" >> ~/.conkyrc ;;
        "Szybkosc procesora w GHz") echo "\${color grey}Frequency (in GHz):\$color \$freq_g" >> ~/.conkyrc ;;
        "Zużycie pamięci RAM") echo "\${color grey}RAM Usage:\$color \$mem/\$memmax - \$memperc% \${membar 4}" >> ~/.conkyrc ;;
        "Zużycie pamięci SWAP") echo "\${color grey}Swap Usage:\$color \$swap/\$swapmax - \$swapperc% \${swapbar 4}" >> ~/.conkyrc ;;
        "Zużycie procesora") echo "\${color grey}CPU Usage:\$color \$cpu% \${cpugauge 40}" >> ~/.conkyrc ;;
        "Procesy") echo "\${color grey}Processes:\$color \$processes  \${color grey}Running:\$color \$running_processes \$hr" >> ~/.conkyrc ;;
        "Pliki systemowe") echo "\${color grey}File systems: / \$color\${fs_used /}/\${fs_size /} \${fs_bar 4 /}" >> ~/.conkyrc ;;
        "Upload i Download") echo "\${color lightgrey}Networking:
 Down:\${color #8844ee} \${downspeed eth0} k/s\${color lightgrey} \${offset 70}Up:\${color #22ccff} \${upspeed eth0} k/s" >> ~/.conkyrc ;;
	    "Uruchomione procesy") echo "
        \${color grey}Name              PID   CPU%   MEM%
        \${color lightgrey} \${top name 1} \${top pid 1} \${top cpu 1} \${top mem 1}
        \${color lightgrey} \${top name 2} \${top pid 2} \${top cpu 2} \${top mem 2}
        \${color lightgrey} \${top name 3} \${top pid 3} \${top cpu 3} \${top mem 3}
        \${color lightgrey} \${top name 4} \${top pid 4} \${top cpu 4} \${top mem 4}" >> ~/.conkyrc ;;
   esac
done 

echo "]]">> ~/.conkyrc



