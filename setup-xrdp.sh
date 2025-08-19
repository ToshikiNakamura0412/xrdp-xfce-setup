#!/bin/bash

# XRDP, Xfce, dbus, X11
sudo apt-get update && sudo apt-get install -y --no-install-recommends \
  xrdp \
  xfce4 \
  xfce4-terminal \
  dbus-x11 \
  xorgxrdp \
  xserver-xorg-input-all \
  x11-xserver-utils

# Xfce settings
printf "#!/bin/bash\ndbus-launch --exit-with-session startxfce4" > ~/.xsession
chmod +x ~/.xsession
