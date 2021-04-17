library(data.table)
library(reshape2)
library(tidyverse)

##===================================================================
## Step 1 ##
## Load activity labels + features from the "UCI HAR Dataset" folder
## 
##===================================================================

activityLabels <- fread("UCI HAR Dataset/activity_labels.txt",
                        col.names = c("classLabels", "activityName"))

features <- fread("UCI HAR Dataset/features.txt",
                  col.names = c("index", "featureNames"))

featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])

measurements <- features[featuresWanted, featureNames]
measurements <- gsub('[()]', '', measurements)

measurements

##===================================================================
## Step 2 ##
## Load train dataset from the "UCI HAR Dataset" folder
## 
##===================================================================

train_data <- fread("UCI HAR Dataset/train/X_train.txt")[, featuresWanted, 
                                                         with = FALSE]

data.table::setnames(train_data, colnames(train_data), measurements)

trainActivities <- fread("UCI HAR Dataset/train/Y_train.txt",
                         col.names = c("Activity"))

trainSubjects <- fread("UCI HAR Dataset/train/subject_train.txt",
                       col.names = c("SubjectNum"))

train_data <- cbind(trainSubjects, trainActivities, train_data)


##===================================================================
## Step 3 ##
## Load test datasets from the "UCI HAR Dataset" folder
## 
##===================================================================

test_data <- fread("UCI HAR Dataset/test/X_test.txt")[, featuresWanted, 
                                                      with = FALSE]

data.table::setnames(test_data, colnames(test_data), measurements)

testActivities <- fread("UCI HAR Dataset/test/Y_test.txt", 
                        col.names = c("Activity"))

testSubjects <- fread("UCI HAR Dataset/test/subject_test.txt", 
                      col.names = c("SubjectNum"))

test_combnind <- cbind(testSubjects, testActivities, test_data)

##===================================================================
## Step 4 ##
## Merge test and activity dataset
## 
##===================================================================

combined_data <- rbind(train_data, test_combnind)


##===================================================================
## Step 5 ##
## Convert to factors
## 
##===================================================================

combined_data[["Activity"]] <- factor(combined[, Activity]
                              , levels = activityLabels[["classLabels"]]
                              , labels = activityLabels[["activityName"]])

combined_data[["SubjectNum"]] <- as.factor(combined[, SubjectNum])

combined_data <- melt(data = combined_data, 
                      id = c("SubjectNum", "Activity"))

combined_data <- dcast(data = combined_data, 
                       SubjectNum + Activity ~ variable, 
                       fun.aggregate = mean)

fwrite(combined_data, file = "tidy_Data.txt", quote = FALSE)

tibble::tibble(combined_data)
