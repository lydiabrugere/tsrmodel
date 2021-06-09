Prediction of Tree Species Richness in Continental United States
==============================

This repository contains all the source codes for data processes and model development for the following article:  

Brugere, L., Kwon, Y., Frazier, A. E., Kedron, P. 2021. Predicting tree species richness with artificial neural networks and random forests. Submitted to Environmental Modeling and Software.


Project Organization
------------

    ├── environmental_covariates_process		<- source codes for processing the 20 environmental covariates from the original sources to a central database in postgres
    ├── fia_tsr_process	<- source codes for processing the FIA database for the continental U.S. from FIADB online to a central database in posstgrse and calculating TSR at a 20 km by 20 km grid system for the continental U.S.
    └── models				<- GLM, random forest, ANN models training and testing as well as the hybrid models of them with ordinary kriging.
--------

Environmental Variables used in this study
------------

| Category                  | Abbreviation | Variable                                 | Data Source                             | Spatial Resolution | Previous Studies                                                                     |
|---------------------------|--------------|------------------------------------------|-----------------------------------------|--------------------|--------------------------------------------------------------------------------------|
| Areal factors             | FA           | Forest Area (km2)                        | https://www.mrlc.gov/                   | 30 m               | Kreft & Jetz, 2008; Kwon, Larsen, and Lee, 2018; Kwon et al. 2019                    |
|                           | WA           | Water Area (km2)                         |                                         |                    | Kwon, Larsen, and Lee, 2018                                                          |
| Climatic seasonality      | ART          | Annual Range of Temperature              | https://worldclim.org/                  | 1 km               | Wang et al., 2010; Kwon, Larsen, and Lee, 2018                                       |
|                           | PSN          | Precipitation Seasonality                |                                         |                    | Wang et al., 2010; Kwon, Larsen, and Lee, 2018; Kwon et al. 2019                     |
|                           | TSN          | Temperature Seasonality                  |                                         |                    | Wang et al., 2010; Kwon, Larsen, and Lee, 2018; Kwon et al. 2019                     |
| Energy availability       | MAT          | Mean Annual Temperature (oC)             |                                         |                    | Kreft & Jetz, 2008; Wang et al., 2010; Kwon, Larsen, and Lee, 2018; Kwon et al. 2019 |
|                           | MTWQ         | Mean Temperature of Warmest Quarter (oC) |                                         |                    | Kwon, Larsen, and Lee, 2018                                                          |
|                           | PET          | Potential Evapotranspiration (mm)        | https://cgiarcsi.community              | 1 km               | Kreft & Jetz, 2008; Kwon, Larsen, and Lee, 2018; Kwon et al. 2019                    |
| Energy-water dynamic      | EWD          | PET-PET2+MAP                             | Calculated based on PET and MAP         | 1 km               | Wang et al., 2010; Kwon, Larsen, and Lee, 2018                                       |
| Habitat heterogeneity     | RA           | Range of Altitude                        | https://lta.cr.usgs.gov/GTOPO30)        | 1 km               | Wang et al., 2010; Kwon, Larsen, and Lee, 2018                                       |
|                           | RMAP         | Range of Mean Annual Precipitation       | Calculated based on MAP                 | 1 km               |                                                                                      |
|                           | RMAT         | Range of Mean Annual Temperature         | Calculated based on MAT                 | 1 km               |                                                                                      |
| Limiting climatic factors | MFDF         | Mean Frost Day Frequency                 | https://crudata.uea.ac.uk/cru/data/hrg/ | 30 m               | Kwon, Larsen, and Lee, 2018; Kwon et al. 2019; Kwon et al. 2019                      |
|                           | MPDQ         | Mean Precipitation of Driest Quarter     | https://worldclim.org/                  | 1 km               |                                                                                      |
|                           | MTCQ         | Mean Temperature of Coldest Quarter      | https://worldclim.org/                  | 1 km               |                                                                                      |
|                           | ALT          | Altitude                                 | https://lta.cr.usgs.gov/GTOPO30)        | 1 km               | Fan and Warning, 2008                                                                |
|                           | SHG          | Soil Hydrological Group                  | https://gdg.sc.egov.usda.gov/           | 10 m               | Kwon et al. 2019                                                                     |
| Water availability        | AET          | Annual Evapotranspiration (mm)           | http://www.ntsg.umt.edu/                | 1 km               | Fan and Warning, 2008, Wang et al., 2010; Kwon et al. 2019                           |
|                           | AI           | Aridity Index                            | https://cgiarcsi.community              | 1 km               | Kwon, Larsen, and Lee, 2018                                                          |
|                           | MAP          | Mean Annual Precipitation                | https://worldclim.org/                  | 1 km               | Fan and Warning, 2008, Kwon, Larsen, and Lee, 2018; Kwon et al. 2019                 |