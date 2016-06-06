#!/bin/bash
ans=$(zenity  --list  --text "How linux.byexamples can be improved?" --checklist  --column "Pick" --column "options" TRUE "More pictures" TRUE "More complete post" FALSE "Includes Installation guidelines" FALSE "Create a forum for question queries" --separator=":"); echo $ans
