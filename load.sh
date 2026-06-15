#!/usr/bin/env bash

sudo insmod microchip_t1s.ko
sudo insmod lan865x_t1s.ko

# Is this required? Think I saw performance mode being necessary somewhere.
# Commenting this because we're currently just testing, don't wanna mess with CPU for temps as such.
# echo performance | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor > /dev/null
