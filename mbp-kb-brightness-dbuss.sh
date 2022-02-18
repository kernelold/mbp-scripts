#!/bin/bash
if [[  "$1" == "UP" ]] ; then
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness"   int32:"$(($(cat /sys/class/leds/apple::kbd_backlight/brightness) + 32))"
elif [[  "$1" == "DOWN" ]] ; then
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness"   int32:"$(($(cat /sys/class/leds/apple::kbd_backlight/brightness) - 32))"
else
    echo "nothing to do"
fi
