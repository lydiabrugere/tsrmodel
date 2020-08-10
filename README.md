Prediction of Tree Species Richness in Continental United States
==============================

This repository contains all the data processes and modelings for `Deep Neural Networks and Random Forests for Prediction of Tree Species Richness in Continental United States` by Lian Brugere and Yongsang Kwon.  

**Details to be added!
**
Project Organization
------------

    ├── feature_process		<- source codes for processing the predictor variables from original sources to a central database in postgres
    ├── fia_tsr_calculation	<- source codes for processing the FIA sources for the continental U.S. from FIADB online to a central database in posstgrse as well as pre-process to aggregate the data to a 20 km by 20 km grid system
    ├── feature_importance_selection        <- source codes for feature selections and importance ranking
    ├── models				<- GLM, random forest, NN models for the continental U.S.
    ├── models_eus			<- GLM, random forest, NN models for eastern U.S.
    └── model_output_analysis	<- plots and analysis for the final outputs


--------