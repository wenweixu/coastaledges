#! /usr/bin/env python

#Extract sample values at training point locations

import numpy as np
from pygeotools.lib import iolib, geolib

pt_fn='trainingpts_utm_xycode.csv'
r_fn='NOAA2017_DEM-0000014848-0000000000.tif'
r_ds = iolib.fn_getds(r_fn)
#xy_srs = geolib.wgs_srs
xcol=0
ycol=1

print("Loading points: %s" % pt_fn)
#This needs to return a header
pts = iolib.readcsv(pt_fn)

out_samp = []
for b in range(1,5):
    samp = geolib.sample(r_ds, pts[:,xcol], pts[:,ycol], bn=b, pad=1, count=True)
    out_samp.append(samp)

#Not finished...
