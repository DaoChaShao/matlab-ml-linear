<p align="right">
  Language Switch / 语言选择：
  <a href="./README.zh-CN.md">🇨🇳 中文</a> | <a href="./README.md">🇬🇧 English</a>
</p>

**INTRODUCTION**
---
Intro
This MATLAB App provides an interactive environment for performing linear regression on your dataset. Users can load data, split it into training and testing sets, train a linear model, and visualize both predictions and residuals. The app is designed for educational purposes as well as rapid prototyping of regression models.

**FEATURES**
---
- **Data Management**: Load, view, and reset datasets easily.  
- **Train/Test Split**: Choose the training set size and random seed for reproducible experiments.  
- **Linear Model Training**: Fit a linear regression model and display key statistics including RMSE, R², adjusted R², F-statistic, and p-value.  
- **Significant Coefficients**: Identify statistically significant predictors and view them in a dedicated table.  
- **Prediction & Evaluation**: Test the model on unseen data and display metrics such as MAE, MSE, RMSE, and R² for both train and test sets.  
- **Visualization**: Interactive plots for true vs. predicted values and residuals for both training and testing sets.  
- **User Interaction**: Buttons for loading data, training, testing, resetting, and quitting the app.  

**DATA DESCRIPTION**
---
The example dataset used in this app is mainly for predicting car performance. It includes the following features:

- **Cylinders**: Number of cylinders in the car  
- **Displacement**: Engine displacement  
- **Horsepower**: Engine horsepower  
- **Weight**: Vehicle weight  
- **Acceleration**: Acceleration  
- **Model_Year**: Model year of the car  
- **MPG**: Miles Per Gallon (target variable)  

Dataset characteristics:
- Contains both continuous and discrete numerical features  
- Moderate sample size, suitable for linear regression modeling and demonstrating train/test workflows 

**HOW TO LOAD IT**
---
```matlab
% Load the 'carbig' dataset in MATLAB
load carbig
% The dataset now contains variables such as:
% Cylinders, Displacement, Horsepower, Weight, Acceleration, Model_Year, MPG
% Example: view the first few rows of Horsepower and MPG
Horsepower(1:10)
MPG(1:10)
```

**LICENCE**
---
This application is licensed under the [BSD-3-Clause License](LICENSE). You can click the link to read the licence.

**HOW TO USE GIT IN MATLAB**
---
1. **Create a new directory**  
Create a folder on your computer for your MATLAB project. This folder will serve as the root for your Git repository.
2. **Initialize a local repository**  
Run the command `repo = gitinit("repoName")` in MATLAB to initialize a local repository. You can check the repository status using `status(repo)`.
3. **Add new files**  
For any new files in your project, click **Add to Source Control**. Then commit your changes using appropriate commit messages.
4. **Share to GitHub**  
In MATLAB, go to the **Source Control** tab and click **Share to GitHub**. Follow the prompts to create a corresponding repository on GitHub.
5. **Push to GitHub**  
Click **Push** to upload your local commits to the GitHub repository.
6. **Authenticate**  
Enter your GitHub username and password, or use a Personal Access Token (PAT) for authentication.

**INTEGRATING PYTHON WITH MATLAB**
---
1. Run the command `pyenv` to check the Python version and confirm whether Python is available in MATLAB.  
2. If Python is available, you can call functions from **Python files**.  
3. To call a function defined in a Python file, use the syntax:  
   ``` matlab
   py.[module_name].[function_name]
4. If you add **new** functions to the Python file, you must restart you MATLAB application.
5. If you do **NOT** run this command, MATLAB may throw **errors** when calling the updated functions.
6. If you deleted the remote repository, you can run the command `!git remote -v` and `!git remote remove origin` to clear the local remote.
