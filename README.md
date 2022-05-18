## Improved prediction of tree species richness and interpretability of environmental drivers using a machine learning approach
==============================

This repository contains all the source codes for data processes and model development for the following article:  

"Improved prediction of tree species richness and interpretability of environmental drivers using a machine learning approach", which is submitted to Forest Ecology and Management journal.


### Project Organization
------------
This repo is organized according to the modeling workflow as illustrated below ![flowchart](https://github.com/lydiabrugere/tsrmodel/blob/master/Supplementary_Data/Model_Workflow_Chart.png)

> `Environmental_Covariates_Processing`: The python executables extract all the 20 environmental covariates used in this study from their orignal format and resolution to the 20 km by 20 km grid system;  
> `TSR_Outcome_Variable_Processing`: The SQL files parse the FIA databases to calculate TSR in FIA plot level and then compile it to the 20 km by 20 km grid system; The Jupyter notebook `target_variable_eda.ipynb` calculate the summary statistics of the TSR and plot the frequency and density distribution.  
> `Model_Development_Evaluation`: Each jupyter notebook contains model training, hyperparameter tuning, validation and testing as the file name implies. `Model_Results_Comparison` inside this folder are scripts for model results and residuals analysis.
The Jupyter notebook `random_forest_permutation_importance ` performs SHAP analysis on the environmental drivers based on the trained random forest model.   
> `Supplementary_Data`: contains all the input & output variables aggregated at the 20 km by 20 km grid system used in this study for all the modeling and analysis.  

### Tree Species Occurrence Data Sources
------------
FIA database (version 1.8.0.00) for the continental United States from the [FIA DataMart](https://apps.fs.usda.gov/fia/datamart/). The 20 km by 20 km grid system (a total of 20,251 grids) over the entire continental United States can be found [here](https://github.com/lydiabrugere/tsrmodel/blob/master/Supplementary_Data/Employed_Grid_System_ProjectionNAD83.zip).

### Environmental Covariates Data Sources
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
