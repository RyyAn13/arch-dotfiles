#!/bin/bash

mkdir -p ~/Pictures/Screenshots

grim -g "$(slurp)" - | tee ~/Images/screenshots/shot_$(date +%Y%m%d_%H%M%S).png | swappy -f -
