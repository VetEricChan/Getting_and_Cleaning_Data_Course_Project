### Getting and Cleaning Data Project

Author: Li-Chuan Chan

### Source Data

Data + Description can be found here [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data Set Information

#### Subject

From 1 to 30 (for 30 volunteers within an age bracket of 19-48 years)

#### Activity

Each person performed six activities:

WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

wearing a smartphone (Samsung Galaxy S II) on the waist.

#### Attribute Information

##### The averages of means of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:

-   3 to 5: tBodyAcc-mean()

    1.  tBodyAcc-mean()-X
    2.  tBodyAcc-mean()-Y
    3.  tBodyAcc-mean()-Z

##### The averages of means of gravity accelerations in X, Y and Z axes with inertial signals come from accelerometer:

-   6 to 8: tGravityAcc-mean()

    1.  tGravityAcc-mean()-X
    2.  tGravityAcc-mean()-Y
    3.  tGravityAcc-mean()-Z

##### The averages of means of Jerk signals obtained from body acceleration in X, Y and Z axes:

-   9 to 11: tBodyAccJerk-mean()

    1.  tBodyAccJerk-mean()-X
    2.  tBodyAccJerk-mean()-Y
    3.  tBodyAccJerk-mean()-Z

##### The averages of means of Jerk signals obtained from body acceleration in X, Y and Z axes:

-   12 to 14: tBodyGyro-mean()

    1.  tBodyGyro-mean()-X
    2.  tBodyGyro-mean()-Y
    3.  tBodyGyro-mean()-Z

##### The averages of means of body angular velocities obtained from gyroscope in X, Y and Z axes:

-   15 to 17: tBodyGyroJerk-mean()

    1.  tBodyGyroJerk-mean()-X
    2.  tBodyGyroJerk-mean()-Y
    3.  tBodyGyroJerk-mean()-Z

##### The averages of means of Jerk signals obtained from body angular velocities in X, Y and Z axes:

-   18: tBodyAccMag-mean()
-   19: tGravityAccMag-mean()
-   20: tBodyAccJerkMag-mean()
-   21: tBodyGyroMag-mean()
-   22: tBodyGyroJerkMag-mean()

##### The averages of means of magnitudes of those three-dimensional signals calculated by using the Euclidean norm:

-   23 to 25: fBodyAcc-mean()

    1.  fBodyAcc-mean()-X
    2.  fBodyAcc-mean()-Y
    3.  fBodyAcc-mean()-Z

##### The averages of means of Jerk signals obtained from body acceleration in X, Y and Z axes:

-   26 to 28: fBodyAccJerk-mean()

    1.  fBodyAccJerk-mean()-X
    2.  fBodyAccJerk-mean()-Y
    3.  fBodyAccJerk-mean()-Z

##### The averages of means of body angular velocities obtained from gyroscope in X, Y and Z axes:

-   29 to 31: fBodyGyro-mean()

    1.  fBodyGyro-mean()-X
    2.  fBodyGyro-mean()-Y
    3.  fBodyGyro-mean()-Z

##### The averages of means of magnitudes of these three-dimensional signals calculated by using the Euclidean norm:

-   32: fBodyAccMag-mean()
-   33: fBodyBodyAccJerkMag-mean()
-   34: fBodyBodyGyroMag-mean()
-   35: fBodyBodyGyroJerkMag-mean()

##### The averages of standard deviations of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:

-   36 to 38: tBodyAcc-std()

    1.  tBodyAcc-std()-X
    2.  tBodyAcc-std()-Y
    3.  tBodyAcc-std()-Z

##### The averages of standard deviations of gravity accelerations in X, Y and Z axes with inertial signals come from accelerometer:

-   39 to 41: tGravityAcc-std()

    1.  tGravityAcc-std()-X
    2.  tGravityAcc-std()-Y
    3.  tGravityAcc-std()-Z

##### The averages of standard deviations of Jerk signals obtained from body acceleration in X, Y and Z axes:

-   42 to 44: tBodyAccJerk-std()

    1.  tBodyAccJerk-std()-X
    2.  tBodyAccJerk-std()-Y
    3.  tBodyAccJerk-std()-Z

##### The averages of standard deviations of body angular velocities obtained from gyroscope in X, Y and Z axes:

-   45 to 47: tBodyGyro-std()

    1.  tBodyGyro-std()-X
    2.  tBodyGyro-std()-Y
    3.  tBodyGyro-std()-Z

##### The averages of standard deviations of Jerk signals obtained from body angular velocities in X, Y and Z axes:

-   48 to 50: tBodyGyroJerk-std()

    1.  tBodyGyroJerk-std()-X
    2.  tBodyGyroJerk-std()-Y
    3.  tBodyGyroJerk-std()-Z

##### The averages of standard deviations of magnitudes of those three-dimensional signals calculated by using the Euclidean norm:

-   51: tBodyAccMag-std()
-   52: tGravityAccMag-std()
-   53: tBodyAccJerkMag-std()
-   54: tBodyGyroMag-std()
-   55: tBodyGyroJerkMag-std()

##### The averages of standard deviations of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:

-   56 to 58: fBodyAcc-std()

    1.  fBodyAcc-std()-X
    2.  fBodyAcc-std()-Y
    3.  fBodyAcc-std()-Z

##### The averages of standard deviations of Jerk signals obtained from body acceleration in X, Y and Z axes:

-   59 to 61: fBodyAccJerk-std()

    1.  fBodyAccJerk-std()-X
    2.  fBodyAccJerk-std()-Y
    3.  fBodyAccJerk-std()-Z

##### The averages of standard deviations of body angular velocities obtained from gyroscope in X, Y and Z axes:

-   62 to 64: fBodyGyro-std()

    1.  fBodyGyro-std()-X
    2.  fBodyGyro-std()-Y
    3.  fBodyGyro-std()-Z

##### The averages of standard deviations of magnitudes of these three-dimensional signals calculated by using the Euclidean norm:

-   65: fBodyAccMag-std()
-   66: fBodyBodyAccJerkMag-std()
-   67: fBodyBodyGyroMag-std()
-   68: fBodyBodyGyroJerkMag-std()

### Please see the README.md and run_analysis.R for how to gererate tidy_data

Step 1. Load activity labels + features from the "UCI HAR Dataset" folder.

Step 2. Load train datasets from the "UCI HAR Dataset" folder.

Step 3. Load test datasets from the "UCI HAR Dataset" folder.

Step 4. Merge test and train dataset.

Step 5. Convert to factors in dataset and save.
