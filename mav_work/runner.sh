#!/bin/bash

# Check if the file name argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 file_name"
  exit 1
fi

# Set the necessary environment variable
export LD_LIBRARY_PATH=/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/lib:$LD_LIBRARY_PATH

# Define color codes
RED='\033[0;31m'
OKCYAN='\033[0;36m'
NC='\033[0m' # No Color

# Print the LD_LIBRARY_PATH for verification in cyan color
echo -e "${OKCYAN}LD_LIBRARY_PATH is set to: $LD_LIBRARY_PATH${NC}"

# Get the current working directory
CURRENT_DIR=$(pwd)

# Extract the base file name (without any extension) from the provided argument
FILE_NAME=$(basename "$1")
FILE_NAME="${FILE_NAME%.*}"

# Run the vpic command
/home1/mberkland2023/repos/vpic-kokkos/build/bin/vpic $CURRENT_DIR/$1

# Run the generated executable
./$FILE_NAME.Linux

# Enable extended globbing
shopt -s extglob

# Set the output directory using the current timestamp
OUTPUT_DIR=/home1/mberkland2023/repos/vpic-kokkos/mav_work/$FILE_NAME/output/$(date +%s)

# Make a new directory in the output directory with the current timestamp
mkdir -p $OUTPUT_DIR

# Move only the specified files to the output/{timestamp} directory
mv $FILE_NAME.Linux checkpt.*.* ehydro.*.* energies eparticle.*.* fields.*.* ihydro.*.* iparticle.*.* params.txt $OUTPUT_DIR

# Disable extended globbing
shopt -u extglob

# Print the output directory in cyan color
echo -e "Files saved inside: ${OKCYAN}$OUTPUT_DIR${NC}"
