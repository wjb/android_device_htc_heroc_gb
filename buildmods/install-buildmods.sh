#!/bin/bash

# This script is designed to copy files needed to build HeroC into CM7 directories

echo ""
echo "Starting install-buildmods.sh"

cp ./definitions.mk.heroc           ../../../../build/core/definitions.mk
cp ./vendorsetup.sh                 ../../../../vendor/cyanogen/vendorsetup.sh
cp ./prelink-linux-arm-heroc.map    ../../../../vendor/cyanogen/prelink-linux-arm-heroc.map
cp ./AndroidProducts.mk.heroc       ../../../../vendor/cyanogen/products/AndroidProducts.mk
cp ./cyanogen_heroc.mk.heroc        ../../../../vendor/cyanogen/products/cyanogen_heroc.mk

echo "Done."
echo ""
