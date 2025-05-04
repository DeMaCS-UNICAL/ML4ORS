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
git clone https://github.com/your-username/ml4ors.git
cd ml4ors
## Install dependencies:
pip install -r requirements.txt
## Run notebooks in order:
1. pre-processing.ipynb
2. predict_ML4ORS.ipynb
3. create_confidence_range.ipynb
