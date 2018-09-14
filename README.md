
# Machine Learning in the Context of Coastal Habitat Classification¶
Project Repository for GeoHackWeek 2018 - Coastal Edges Project Team

## Collaborators
* Allison Bailey (Project Lead) - Private Consultant @ Sound GIS, Seattle, WA
* Jonathan Batchelor - PhD Student, at UW Forestry, Seattle WA
* Dr. F. Patricia Medina - Post Doc, Worcester Polytechnic Institute, MA
* Miya Pavlock McAuliffe - Master's Student, Moss Landing Marine Labs, California State University - Monterey Bay, CA
* Dr. Dimitra Salmanidou, Post Doc, University College, London, UK
* Wenwei Xu, Research Scientist, Pacific Northwest National Lab, Seattle, WA

## The Problem
Our team would like to explore and compare a variety of machine learning approaches for land cover classification in the coastal realm.  Ideally, automation of land cover classification methods could lead to increased efficiency in creating maps and other useful products for marine resource managemement.

## Application
Comprensive marine and coastal habitat maps are essential for management and protection of these critical ecosystems as well as detection of changes over time.  

## Data
Data are digital color-infrared aerial photography and LiDAR digital elevation models for a section of the Oregon coast.
- NOAA 2017 (CIR and RGB) imagery, 0.5m resolution
- LiDAR DEMs, 1m resolution

## Methods/Tools
### Google Earth Engine
- Data visualization and review in spatial context
- Raster/Image mosaicking
- Combining multiple rasters to create single multi-band image
- Creating training data point locations
- Unsupervised classification
  - K-means clustering
- Supervised classification
  - Support Vector Machine (SVM)
  - CART
  - Random Forest
### Python and Command Line Tools (OGR/bash)
- Data Preprocessing
  - Raster/Image Mosaicking
  - Combining rasters to create single multi-band image
  - Output to csv file for input to machine learning code
- Machine Learning
  - unsupervised (K-means)
  - supervised
 ### ArcGIS (cheat)
 - Assign spectral band values (machine learning features) to training point data
 - Export training point data to csv for input to machine learning code

## Learnings / Conclusions
- Strengths and Weakness of various ML methods for this application
- Comparison of tools/workflows  (GE vs. Python/CLI)

## Next Steps

## Acknowledgements
Many thanks to all the amazing presenters and support team/coordinators of [Geohackweek 2018](https://geohackweek.github.io/our-team.html).  Special thanks to David Shean, Shay Strong, Catherine Kuhn, and James Douglass who helped us write scripts, debug technical issues, and discussed machine learning and general data science concepts.

## Background Reading
- [A Survey of Image Classification Methods and Techniques for Improving Classification Performance](https://www.researchgate.net/publication/209804567_A_Survey_of_Image_Classification_Methods_and_Techniques_for_Improving_Classification_Performance)
- [Implementation of machine-learning classification in remote sensing: an applied review](https://doi.org/10.1080/01431161.2018.1433343)
- [Image-based seabed classification: what can we learn from terrestrial remote sensing?](https://doi.org/10.1093/icesjms/fsw118)
- [Unified Geomorphological Analysis Workflows with Benthic Terrain Modeler](https://doi.org/10.3390/geosciences8030094)
