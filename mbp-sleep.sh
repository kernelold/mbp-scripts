#!/bin/sh
BTMP=/tmp/current_brightness
if [ "${1}" = "pre" ]; then
    modprobe -r apple_ib_tb
    cp '/sys/class/leds/apple::kbd_backlight/brightness' "$BTMP"
    echo 0 > '/sys/class/leds/apple::kbd_backlight/brightness'
elif [ "${1}" = "post" ]; then
    modprobe apple_ib_tb
	if test -f "$BTMP"; then
	    cat /tmp/current_brightness > '/sys/class/leds/apple::kbd_backlight/brightness'
    fi
fi
