#!/bin/bash

# Generate random Pokémon art
sh -c "pokemon-colorscripts -r -s --no-title > ~/.config/fastfetch/random-pokemon.txt"

# Run kitty with fastfetch using that Pokémon
env STARTUP=1 kitty --title "startup_fastfetch" --hold -e fastfetch \
  -l "$HOME/.config/fastfetch/random-pokemon.txt" \
  --logo-width 6 --logo-height 7 \
  --logo-padding-top 7 --logo-padding-left 7
``
