#!/usr/bin/env bash

URL=https://raw.githubusercontent.com/torvalds/linux/refs/tags/v6.18

rm lan865x.c microchip_t1s.c oa_tc6.c oa_tc6.h

wget ${URL}/drivers/net/ethernet/microchip/lan865x/lan865x.c
wget ${URL}/drivers/net/phy/microchip_t1s.c
wget ${URL}/drivers/net/ethernet/oa_tc6.c
wget ${URL}/include/linux/oa_tc6.h

# Replace oa_tc6.h includes
sed --in-place 's!#include <linux/oa_tc6.h>!#include "oa_tc6.h"!' lan865x.c oa_tc6.c
