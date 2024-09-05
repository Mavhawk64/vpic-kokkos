#!/bin/bash

# Set the necessary environment variable
export LD_LIBRARY_PATH=/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/lib:$LD_LIBRARY_PATH

# Define color codes
RED='\033[0;31m'
OKCYAN='\033[0;36m'
NC='\033[0m' # No Color

# Print the LD_LIBRARY_PATH for verification in red color
echo -e "${OKCYAN}LD_LIBRARY_PATH is set to: $LD_LIBRARY_PATH${NC}"

# Run the vpic command
/home1/mberkland2023/repos/vpic-kokkos/build/bin/vpic /home1/mberkland2023/repos/vpic-kokkos/mav_work/shock/shock.cpp

# Run the generated executable
./shock.Linux

# Enable extended globbing
shopt -s extglob

# Set the output directory
OUTPUT_DIR=/home1/mberkland2023/repos/vpic-kokkos/mav_work/shock/output/$(date +%s)

# Make a new directory in the output directory with the current timestamp
mkdir -p $OUTPUT_DIR

# Move all files except any that contain "shock" in their name and the "output" directory to the output/{timestamp} directory
mv !(output|shock.cpp|run_shock.sh) $OUTPUT_DIR

# Disable extended globbing
shopt -u extglob

# Print the output directory in color
echo -e "Files saved inside: ${OKCYAN}$OUTPUT_DIR${NC}"
