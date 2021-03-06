### Getting and Cleaning Data Course Project

Author: Li-Chuan Chan

### Purpose Of This Project and Data Set

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

### This Repository Includes The Following Files

1.  `README.md`: explains how all of the scripts work and how they are connected.

2.  `tidy_Data.txt`: a tidy data set with unique identifiers *subject* and *activity*, with 180 observations and 68 variables including *subject_id* and *activity_name*

3.  `run_analysis.R`: code generating the tidy data set from raw data recorded in the *Human Activity Recognition Using Smartphones Data Set*. The process of generating tidy data set includes the following steps:

    Step 1. Load activity labels + features from the "UCI HAR Dataset" folder.

    Step 2. Load train datasets from the "UCI HAR Dataset" folder.

    Step 3. Load test datasets from the "UCI HAR Dataset" folder.

    Step 4. Merge test and train dataset.

    Step 5. Convert to factors in dataset and save.

4.  `CodeBook.md`: a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data
