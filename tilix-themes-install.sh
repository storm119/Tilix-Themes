#!/bin/bash

# Color Variables
C_LBLUE='\033[0;94m'
C_LGREEN='\033[0;92m'
NC='\033[0m' # No Color

# Themes list
#
# Associative array 
# key = filename
# value = download url
#
declare -A THEMES=(
	[3024]="https://git.io/v7QVI"
	[3024-night]="https://git.io/v7QVY"
	[adventuretime]="https://git.io/v7QVg" 	
	[afterglow]="https://git.io/v7QVD"
	[alien-blood]="https://git.io/v7QVk" 	
	[argonaut]="https://git.io/v7QV5"
	[arthur]="https://git.io/v7QV1"
	[atom]="https://git.io/v7Q27"
	[belafonte-day]="https://git.io/v7Q25"
	[belafonte-night]="https://git.io/v7Q2F"
	[birds-of-paradise]="https://git.io/v7Q2x" 	
	[blazer]="https://git.io/v7Q2N"
	[borland]="https://git.io/v7Q2Q" 	
	[broadcast]="https://git.io/v7QaU"
	[brogrammer]="https://git.io/v7Qa3" 	
	[c64]="https://git.io/v7Q2p"
	[chalk]="https://git.io/v7Q2A"
	[chalkboard]="https://git.io/v7Q2h"
	[ciapre]="https://git.io/v7Qae"
	[clrs]="https://git.io/v7QaI"
	[cobalt-neon]="https://git.io/v7Q2d"
	[cobalt2]="https://git.io/v7Qav"
	[crayon-pony-fish]="https://git.io/v7Q2b"
	[dark-pastel]="https://git.io/v7Q2j"
	[darkside]="https://git.io/v7QVV"
	[desert]="https://git.io/v7QVl"
	[dimmed-monokai]="https://git.io/v7QaJ"
	[dracula]="https://git.io/v7QaT"
	[earthsong]="https://git.io/v7Qaf"
	[elemental]="https://git.io/v7Qak"
	[espresso-libre]="https://git.io/v7QaL"
	[espresso]="https://git.io/v7Qam"
	[fishtank]="https://git.io/v7Qaq"	
	[flat]="https://git.io/v7Qat"
	[flatland]="https://git.io/v7Qan"
	[flatty]="https://git.io/vFkVc"
	[frontend-delight]="https://git.io/v7Qac"
	[frontend-fun-forrest]="https://git.io/v7QVt"
	[frontend-galaxy]="https://git.io/v7QVz"
	[github]="https://git.io/v7QaC"
	[grape]="https://git.io/v7QaO"	
	[grass]="https://git.io/v7QaZ"
	[gruvbox]="https://git.io/v7Qas"
	[hardcore]="https://git.io/v7QaY"
	[harper]="https://git.io/v7QaG"
	[highway]="https://git.io/v7QV7"
	[hipster-green]="https://git.io/v7QaW"
	[homebrew]="https://git.io/v7Qa4"
	[hurtado]="https://git.io/v7QaB"	
	[hybrid]="https://git.io/v7Qal"
	[ic-green-ppl]="https://git.io/v7QaR"
	[ic-orange-ppl]="https://git.io/v7Qa0"
	[idle-toes]="https://git.io/v7QVw"
	[ir-black]="https://git.io/v7Qa8"
	[jackie-brown]="https://git.io/v7Qau"
	[japanesque]="https://git.io/v7QaE"
	[jellybeans]="https://git.io/v7Qaz"	
	[kibble]="https://git.io/v7Qag"
	[later-this-evening]="https://git.io/v7Qa2"
	[lavandula]="https://git.io/v7QVL"
	[liquid-carbon-transparent]="https://git.io/v7QaV"
	[liquid-carbon]="https://git.io/v7Qaa"
	[man-page]="https://git.io/v7QVU"
	[mathias]="https://git.io/v7Q0x"
	[medallion]="https://git.io/v7QaM"
	[misterioso]="https://git.io/v7Qa6"
	[molokai]="https://git.io/v7QVE"
	[monalisa]="https://git.io/v7QV2"
	[monokai-soda]="https://git.io/v7Qao"
	[monokai]="https://git.io/v7Qad"
	[n0tch2k]="https://git.io/v7QaD"	
	[neopolitan]="https://git.io/v7QaQ"
	[neutron]="https://git.io/v7QVv"
	[nightlion-v1]="https://git.io/v7Qaj"
	[nightlion-v2]="https://git.io/v7QVa"	
	[novel]="https://git.io/v7QVu"
	[obsidian]="https://git.io/v7QV8"
	[ocean]="https://git.io/v7QaX"
	[oceanic-next]="https://git.io/v7QaA"
	[ollie]="https://git.io/v7Qap"
	[one-dark]="https://git.io/v7Qaw"
	[paraiso-dark]="https://git.io/v7Qa1"
	[paul-millr]="https://git.io/v7QaN"
	[pencil-dark]="https://git.io/v7Qab"
	[pencil-light]="https://git.io/v7QVJ" 	
	[pnevma]="https://git.io/v7QV0"
	[pro]="https://git.io/v7QaF"
	[red-alert]="https://git.io/v7Qa7"
	[red-sands]="https://git.io/v7QVf"	
	[rippedcasts]="https://git.io/v7QaP"
	[royal]="https://git.io/v7Qah"
	[sea-shells]="https://git.io/v7Qay"
	[seafoam-pastel]="https://git.io/v7QVW"
	[seti]="https://git.io/v7QV4"
	[shaman]="https://git.io/v7QaH"
	[slate]="https://git.io/v7Qax"
	[smyck]="https://git.io/v7QVe"	
	[soft-server]="https://git.io/v7QaS"
	[solarized-darcula]="https://git.io/v7Qa9"
	[solarized-dark-higher-contrast]="https://git.io/v7Qa5"
	[spacedust]="https://git.io/v7Qai"
	[spacegray-eighties-dull]="https://git.io/v7Qar"
	[spacegray-eighties]="https://git.io/v7QVB"
	[spacegray]="https://git.io/v7QV3"
	[spring]="https://git.io/v7QVn"
	[square]="https://git.io/v7QVm"
	[sundried]="https://git.io/v7QVO"
	[symphonic]="https://git.io/v7QVT"
	[teerb]="https://git.io/v7QVs"
	[terminal-basic]="https://git.io/v7QVP"
	[terminix-dark]="https://git.io/v7QaK"	
	[thayer-bright]="https://git.io/v7QVZ"
	[tommorow-night]="https://git.io/v7QVG" 	
	[tomorrow-night-blue]="https://git.io/v7QVr"
	[tomorrow-night-bright]="https://git.io/v7QVq"
	[tomorrow-night-eighties]="https://git.io/v7QV6"
	[tomorrow]="https://git.io/v7QVy"
	[toy-chest]="https://git.io/v7QVC"
	[treehouse]="https://git.io/v7QVQ"	
	[twilight]="https://git.io/v7QVH"
	[urple]="https://git.io/v7QV9"
	[vaughn]="https://git.io/v7QVi"
	[vibrant-ink]="https://git.io/v7QVX"
	[warm-neon]="https://git.io/v7QVc"
	[wez]="https://git.io/v7QVM"
	[wild-cherry]="https://git.io/v7QVS"
	[wombat]="https://git.io/v7QVR"
	[wryan]="https://git.io/v7QVo"
	[zenburn]="https://git.io/v7QVd"
)

# Some ascii to brighten up the script :)
printf "%b" "\n$C_LBLUE████████╗██╗██╗     ██╗██╗  ██╗\n"
printf "╚══██╔══╝██║██║     ██║╚██╗██╔╝   _   _     \n"
printf "   ██║   ██║██║     ██║ ╚███╔╝   | |_| |__   ___ _ __ ___   ___  ___ \n" 
printf "   ██║   ██║██║     ██║ ██╔██╗   | __| '_ \ / _ \ '_ \` _ \ / _ \/ __|\n"
printf "   ██║   ██║███████╗██║██╔╝ ██╗  | |_| | | |  __/ | | | | |  __/\__ \ \n"
printf "%b" "   ╚═╝   ╚═╝╚══════╝╚═╝╚═╝  ╚═╝   \__|_| |_|\___|_| |_| |_|\___||___/$NC\n\n\n" 

# Prompt the user...in case
printf "This script will install all Tilix theme files available at https://github.com/storm119/Tilix-Themes\n\n"
read -p "Are you sure you want to proceed? " -n 1 -r

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "${BASH_SOURCE[*]}" ]] && exit 1 || return 1
fi

# Create the themes folder if doesn't exist
mkdir -p "$HOME/.config/tilix/schemes"
printf "\n\n\nCreated '%s/.config/tilix/schemes' folder\n\n\n" "$HOME"

# Downloads json files one by one in previously created folder
count=0

for i in "${!THEMES[@]}"
do
	printf "Downloading %s ====> %s   " "$i" "${THEMES[$i]}"
	wget -qO "$HOME/.config/tilix/schemes/$i.json" "${THEMES[$i]}"
  	count=$((count+1))
  	printf "%b" "$C_LGREEN✔$NC\n"
done

printf "\nFinished downloading all %s themes.\n" "$count"
printf "Enjoy!\n"