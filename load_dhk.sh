#!/bin/bash

function setup_xmodmap {
    curl -O https://raw.githubusercontent.com/TimDev9492/keymaps/main/colemak_dhk.xmodmap && xmodmap ./colemak_dhk.xmodmap
    rm ./colemak_dhk.xmodmap
}

function setup_loadkeys {
    curl -O https://raw.githubusercontent.com/TimDev9492/keymaps/main/colemak_dhk.map && loadkeys ./colemak_dhk.map
    rm ./colemak_dhk.map
}

terminal_type=`tset -q`

if [ $terminal_type == "xterm" ]
then setup_xmodmap
else setup_loadkeys
fi


