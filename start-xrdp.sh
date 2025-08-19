#!/bin/bash

sudo rm -f /tmp/.X11-unix/X10
sudo xrdp-sesman --nodaemon &
sudo xrdp --nodaemon &
