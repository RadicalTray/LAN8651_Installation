#!/usr/bin/env bash

URL=https://raw.githubusercontent.com/torvalds/linux/refs/tags/v6.18

rm *.c *.h

wget ${URL}/drivers/net/ethernet/microchip/lan865x/lan865x.c
wget ${URL}/drivers/net/phy/microchip_t1s.c
wget ${URL}/drivers/net/ethernet/oa_tc6.c
wget ${URL}/include/linux/oa_tc6.h

# TODO: Fix these commands
#
# Replace oa_tc6.h includes
# sed --in-place 's/#include <linux/oa_tc6.h>/#include "oa_tc6.h"/' *.c *.h
#
# Define MDIO_MMD_POWER_UNIT
# TODO: Insert `#define MDIO_MMD_POWER_UNIT 13 /* PHY POWER UNIT */` to oa_tc6.c below header includes
