#!/bin/bash

ip_address=$(/bin/cat /home/kur/.config/bin/target | awk '{print $1}')
machine_name=$(/bin/cat /home/kur/.config/bin/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
    echo "  %{F#ffffff}$ip_address%{u-} - $machine_name"
else
    echo "  %{u-}%{F#ffffff} No target"
fi
