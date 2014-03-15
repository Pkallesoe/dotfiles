[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# add font paths
xset fp default
[[ -d /usr/share/fonts/local ]] && xset +fp /usr/share/fonts/local
[[ -d $HOME/.fonts ]] && xset +fp $HOME/.fonts
xset +fp /usr/share/fonts/local
xset fp rehash


# Services
urxvtd -q -f -o &
#compton -cCGfF -o 0.38 -O 200 -I 200 -t 0.02 -l 0.02 -r 3.2 -D2 -m 0.88
#xcompmgr -c -f &
#xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
#xcompmgr -c -C -t-5 -l-5 -r 4.2 -o .95 &
# CapsLock = Ctrl
setxkbmap -option ctrl:nocaps
feh --bg-scale ~/simplewall.jpg &
xset +fp /home/peter/.fonts
# Irssi notify
python2 notify-listener.py &
# Thunar/daemon
# thunar --daemon &

# DWM Startup script, auto restart DWM instead of quit
# use killall X
sh ~/bin/startdwm
#exec awesome
#exec openbox-session
#exec goomwwm
