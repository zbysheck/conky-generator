#!/bin/bash
touch ~/.conkyrc
echo "" > ~/.conkyrc

ans=$(zenity  --list  --text "Conky Generator" --checklist  --column "Pick" --column "options" FALSE "Zużycie procesora" FALSE "Dostępna pamięć na dysku" FALSE "Zajęta pamięć" FALSE "Zużycie rdzeni procesora" FALSE "Szybkość rdzeni" FALSE "Obciążenie rdzeni" FALSE "Ping" FALSE "Upload" FALSE "Download" FALSE "Obciążenie otwartych aplikacji" FALSE "Dzisiejsza data" FALSE "Aktualna godzina" FALSE "Ilość partycji" FALSE "Obciążenie parycji" FALSE "Stopien naładowania baterii" --separator=":");
echo $ansKud

# Sklejanie linijek :

if  true 
	then
		echo "prawdagg" >> ~/.conkyrc
fi

if  false  
	then
		echo "nopegg" >> ~/.conkyrc
fi
