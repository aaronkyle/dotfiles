#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# xcompmgr -c &
# nitrogen --restore &

# using syndaemon to detect keyboard activity and disable trackpad
syndaemon -i 0.6 -t -K -R -d &

# disabling caps lock, which on Lenovo X1 carbon is triggered by double tapping shift (often inadvertently)
setxkbmap -option caps:none &

# using redshift to adjust screen lighting according to time of day (current coordinates for Manila)
redshift -l 14.5838:121.0597 &

# xmonad
openbox
# urxvt &
# xcck -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# connecting thunar:
exec dbus-launch ck-launch-session startxfce4                            
~                                                                                                                  
~                                                                                                                  
~                                                                                                                  
~                                                                                                                  
~                                                                                                                  
~                                                                                        
