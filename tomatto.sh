#!/bin/bash

# Avoid show percentage signal on end of line if running on zsh
export PROMPT_EOL_MARK=""

BAR='█████████████████████████'
SPC='░░░░░░░░░░░░░░░░░░░░░░░░░'

# Focus and rest time expressed in minutes
FOCUSTIME=25
RESTTIME=5
START=1

RESET='\033[m'
FOCUSCOLOR='\033[0;32m'
RESTCOLOR='\033[0;34m'

let END=$FOCUSTIME*60
let REND=$RESTTIME*60

notify-send "Pomodoro" "🍅 It's time to get focus"
play focustime.mp3 -q
for((c=$START; c<$END; c++)); do
  let per=$c*100/$END
  let prg=$c*25/$END
  echo "Focus time 💻"
  echo -ne "\r${RESET}$SPC $per%"
  echo -ne "\r${FOCUSCOLOR}${BAR:0:$prg}\r"
  sleep 1
  printf "\r\033[A${RESET}"
done
printf "              \n"
echo -ne "\r${FOCUSCOLOR}$BAR 100%"
printf "${RESET}\r\033[A              \r"

notify-send "Pomodoro" "Times up. Take a break ☕"
play resttime.mp3 -q
for((c=$START; c<$REND; c++)); do
  let pgr=$c*25/$REND
  let per=$c*100/$REND
  echo "Resting time 😎" 
  echo -ne "\r${RESET}$SPC  $per%"
  echo -ne "\r${RESTCOLOR}${BAR:0:$pgr}"
  sleep 1
  printf "\r\033[A${RESET}"
done
printf "End cicle      \n"
echo -ne "\r${RESTCOLOR}$BAR 100%"
echo -e "${RESET}"
