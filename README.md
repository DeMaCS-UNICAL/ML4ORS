# ML4ORS
## 1. Pre-processing
### Purpose: 
Initial data cleaning and preparation.

- Focuses on outlier removal.
- Prepares the dataset for downstream Machine Learning (ML) tasks.
## 2. Train ML algorithms
### Purpose:
ML prediction and SHAP (SHapley Additive exPlanations) analysis.

- Applies ML models to predict surgery duration.
- Perform Grid Search For Hyper-Parameter Tuning 
- Uses SHAP to interpret feature importance and model decisions.
## 3. Create Confidence Range
### Purpose:
Post-prediction evaluation using absolute percentage error (APE).

- Categories predictions into four confidence levels:
  - High Confidence: APE < 10%
  - Moderate Confidence: 10% ≤ APE < 25%
  - Low Confidence: 25% ≤ APE < 50%
  - Very Low Confidence: APE ≥ 50%

# Getting Started

## Clone this repository:
git clone [https://github.com/DeMaCS-UNICAL/ML4ORS.git](https://github.com/DeMaCS-UNICAL/ML4ORS.git)


cd ml4ors
## Install dependencies:
pip install -r requirements.txt
## Run notebooks in order:
1. pre-processing.ipynb
2. predict_ML4ORS.ipynb
3. create_confidence_range.ipynb


# ASP
## Prerequisites
Installation instructions for different Operating Systems building from sources or using Anaconda for Clingo v5.6.2 can be found here:
https://github.com/potassco/clingo/blob/master/INSTALL.md, https://potassco.org/clingo/,  https://github.com/potassco/clingo/releases/tag/v5.6.2

## Data

Inside the ASP folder, there are 4 main folders containing the input files and 2 encoding files. The encoding files represent one (encoding.asp), the main encoding, and one containing the confidence values assigned to the different patients (confidence.asp). The folders are organized as follows: one containing the data obtained through the ML method (Pred), one with the mean for Departments (Dep), and one with the mean for Surgery (Surg), and the last one with real data (VBA).


The encodings can be executed with the following command: 

```clingo ASP/encoding.asp ASP/{Method}/{Hospital}/input_N.db --restart-on-model --parallel-mode=6 --time-limit=60```

To use the confidence values can be used the following command:
```clingo ASP/encoding.asp ASP/confidence.asp ASP/Pred/{Hospital}/input_N.db --restart-on-model --parallel-mode=6 --time-limit=60```
