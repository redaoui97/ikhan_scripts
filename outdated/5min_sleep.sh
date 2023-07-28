#!/bin/bash

lock_delay=180

for ((i = 0; i < lock_delay; i++)); do
    sleep 1
done
open -a ScreenSaverEngine 
