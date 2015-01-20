

xset r rate 250 25 &

xset b off &

#aplet administrador de red
#nm-applet &    

#applet bateria
xfce4-power-manager &

## Volume keys daemon
xfce4-volumed &

#start tin
tint2 /

## Detect and configure touchpad. See 'man synclient' for more info.
if egrep -iq 'touchpad' /proc/bus/input/devices; then
    synclient VertEdgeScroll=1 &
    synclient TapButton1=1 &
fi


tint2restart
sleep 2s && \
tint2restart
sleep 2s && \
tint2restart
