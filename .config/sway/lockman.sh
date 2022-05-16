#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
#swaylock --clock --indicator --screenshots --effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 4x2 --datestr "%a %e.%m.%Y" --timestr "%k:%M"
# Kills last background task so idle timer doesn't keep running

swaylock --screenshots --clock --indicator-idle-visible \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--ring-color 455a64 \
	--key-hl-color be5046 \
	--text-color cfcfcf \
	--text-wrong-color cfcfcf \
	--text-ver-color cfcfcf \
	--layout-text-color cfcfcf \
	--line-color 00000000 \
	--inside-color 00000088 \
	--separator-color 00000000 \
	--line-wrong-color ff5136 \
	--ring-wrong-color ff5136 \
	--inside-ver-color 00000088 \
	--line-ver-color 18a2ff \
	--ring-ver-color 18a2ff \
	--inside-wrong-color 00000088 \
	--fade-in 0.9 \
	--effect-scale 0.5 --effect-blur 7x3 --effect-scale 2 \
	--effect-vignette 0.5:0.5 \
	--effect-compose "0,1.5%;-1x10%;$HOME/.config/sway/lock.svg" \
	"$@"

kill %%
