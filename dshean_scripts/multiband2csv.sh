#! /bin/bash

#Script to convert multiband geotiff to text files with "x y b1 b2 b3 b4" for valid pixels

fn=$1
#fn=NOAA2017_DEM-0000014848-0000000000.tif
#Excluding DEM, which is in band 5
bands=$(seq 1 4)
#Extract individual bands to ascii text files with "x y value" on each line
parallel "gdal_translate -b {} -of XYZ $fn ${fn%.*}_{}.xyz" ::: $bands
#Remove any lines with nan
parallel "grep -v nan ${fn%.*}_{}.xyz > ${fn%.*}_{}_valid.xyz" ::: $bands
#Combine 
paste -d ' ' ${fn%.*}_*_valid.xyz | cut -d ' ' -f 1,2,3,6,9,12 > ${fn%.*}_valid_combined.xyz
