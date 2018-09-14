#! /bin/bash

#Extract UTM coordinates and values for lat/lon training points 

fn=trainingpts.shp
ogr2ogr -t_srs EPSG:32610 -f csv -lco GEOMETRY=AS_XY ${fn%.*}_utm.csv $fn
cut -d',' -f1,2,4 ${fn%.*}_utm.csv > ${fn%.*}_utm_xycode.csv
