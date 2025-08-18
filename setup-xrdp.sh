#!/bin/bash

# XRDP, Xfce, dbus, X11
sudo apt-get update && sudo apt-get install -y --no-install-recommends \
  xrdp \
  xfce4 \
  xfce4-terminal \
  dbus-x11 \
  xorgxrdp \
  xserver-xorg-core \
  xserver-xorg-input-all \
  x11-xserver-utils

# Xfce settings
echo -e "#!/bin/bash\ndbus-launch --exit-with-session startxfce4" | sudo tee /etc/xrdp/startwm.sh
