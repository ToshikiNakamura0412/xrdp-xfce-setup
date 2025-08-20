#!/bin/bash

sudo xrdp-sesman --nodaemon &
exec sudo xrdp --nodaemon
