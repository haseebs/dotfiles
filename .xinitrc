# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# use gtk widgets
export QT_STYLE_OVERRIDE=GTK+

# set background
#feh --randomize --recursive --bg-fill ~/.wallpaper &
feh --bg-scale 'file:///home/haseebs/pictures/2018-05-04-232044_1920x1080_scrot.png'
#fehbg &

# compositor
#compton --shadow --menu-opacity=0.9 --blur-background --blur-background-frame --inactive-opacity=0.8 --backend glx --glx-no-stencil --shadow-red=1 --shadow-green=1 --shadow-blue=1 --shadow-offset-x=-8 --shadow-offset-y=-8 --daemon &

# notification daemon
dunst &

# hide cursor
# unclutter &

# terminal daemon
urxvtd -q -f -o &

# start session
# Waiting for 5 seconds before loading bspwmrc manually as bspwm does not load it automatically for some reason
(sleep 5 && ~/.config/bspwm/bspwmrc) &
sxhkd &
compton --config ~/.config/compton/compton.conf -b &
polybar bar &
#urxvt &
mpd &
exec bspwm
