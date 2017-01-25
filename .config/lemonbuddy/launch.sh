#!/usr/bin/env sh

# Terminate already running bar instances
lemonbuddy_terminate noconfirm

lemonbuddy_wrapper top &
lemonbuddy_wrapper external &

echo "Bars launched..."
