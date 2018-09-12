#!/bin/bash
intern=eDP1
extern=DP2
extvert=HDMI1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extvert" --off --output "$extern" --off --output "$intern" --auto
else
    /home/nfischer/.screenlayout/3.sh
    pacmd set-default-sink alsa_output.usb-FiiO_FiiO_USB_DAC_K1-01.analog-stereo
fi
