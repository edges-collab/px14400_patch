#!/bin/bash

#wget https://vitrek.com/wp-content/uploads/2023/05/PX1400.zip

usage() {
  echo ""
  echo "Usage: $0 -p /path/to/PX14400/driver/source/directory"
  echo ""
  echo "This script will apply the patched files inside the PX14400"
  echo "unzipped driver source code directory.  You must specify the -p"
  echo "option followed by the path to the PX14400 source"
  echo ""
  echo "  -p     Path to unzipped directory containing the PX14400 driver source"
  echo "  -h     Print this help message"
}

while getopts p:h flag
do
  case "${flag}" in
    p) px_path=${OPTARG};;
    h) usage; exit 1;;
  esac
done

if [ -z "$px_path" ]; then
  usage
  echo ""
  echo "<<< Error: Missing -p followed by path to PX14400 driver source directory >>> " >&2
  exit 1
fi

echo "Applying patch to $px_path/driver/px14_main.c..."
patch -b -d $px_path/driver px14_main.c $cur_path/px14_main.patch 

echo "Applying patch to $px_path/driver/px14_isr.c..."
patch -b -d $px_path/driver px14_isr.c $cur_path/px14_isr.patch 

echo "Done."




