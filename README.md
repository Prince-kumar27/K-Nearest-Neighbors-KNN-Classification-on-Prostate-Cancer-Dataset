# K-Nearest Neighbors (KNN) Classification on Prostate Cancer Dataset

## Project Overview

This project uses the **K-Nearest Neighbors (KNN)** algorithm to classify prostate cancer cases as benign or malignant. The dataset contains diagnostic measurements from prostate cancer patients, and the goal is to predict the diagnosis based on these features.

---

## Steps Involved:

### 1. Data Loading and Exploration
- The dataset is loaded using `read.csv()` and its structure is examined with functions like `str()` and `summary()`.
- The ID column is removed as it's not relevant for classification.
- The diagnosis result column is converted into a factor with two levels: "Benign" and "Malignant".
- Proportions of benign and malignant cases are calculated for better understanding of class distribution.

### 2. Data Preprocessing
- A **normalization function** is applied to scale the features (between 0 and 1) for uniformity.
- The dataset is split into training and testing sets, with 75 samples used for training and 25 samples for testing.
- Labels corresponding to the training and test data are extracted for classification.

### 3. Model Building
- The **KNN algorithm** is implemented using the `knn()` function from the `class` library. The value of k is chosen as 9 (the square root of the total number of rows).
- The model predicts the diagnosis results for the test data.

### 4. Model Evaluation
- The **CrossTable** function from the `gmodels` library is used to compare actual and predicted results, providing a confusion matrix to evaluate the model's performance.

---

## Conclusion

The KNN classification model was successfully applied to classify prostate cancer cases, providing predictions of benign or malignant outcomes based on diagnostic features.
