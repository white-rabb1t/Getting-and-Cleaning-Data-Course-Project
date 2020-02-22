Overview
--------

This project is for the Johns Hopkins University’s Getting and Cleaning
Data course on Coursera. The purpose of this project is to demonstrate
the ability to collect, work with, and clean a data set. The goal is to
prepare tidy data that can be used for later analysis. This project is
peer-graded on a series of yes/no questions related to the project.

**Submission requirements:**

1.  a tidy data set as described below,
2.  a link to a Github repository with the script for performing the
    analysis
3.  a code book that describes the variables, the data, and any
    transformations or work that were performed to clean up the data
    called CodeBook.md. A README.md should also be included in the repo
    with the scripts. This repo explains how all of the scripts work and
    how they are connected.

The data linked to from the course website represent data collected from
the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained:

<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

The data for the project can be found here:

<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

**An R script called run\_analysis.R should be created that does the
following:**

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

Reading the tidy data into R
----------------------------

This is how to read the tidy data into R.

    address <- "https://coursera-assessments.s3.amazonaws.com/assessments/1582388861302/593d6e5e-e6da-45cc-ec93-32ff732c15f6/tidydata.txt"
    address <- sub("^https", "http", address)
    data <- read.table(url(address), header = TRUE)
    View(data)

Explanations for the code
-------------------------

The code uses some functions from the dplyr package, so this is loaded
first.

    ##Load packages
    library(dplyr)

Reads in the features for this database. Column 1 is skipped as it only
contains row names.

    ##Reading features. Column 1 is skipped as it only contains row names
    features <- read.table("./data/features.txt", sep = "", header = FALSE)[2]

Reads in and combines all the data from the test set into one data
frame.

    ##Reading and creating the test data set
    testSubject <- read.table("./data/test/subject_test.txt", sep = "", header = FALSE, col.names = "Subject")
    testX <- read.table("./data/test/X_test.txt", sep = "", header = FALSE, col.names = features[,1], check.names = FALSE)
    testY <- read.table("./data/test/Y_test.txt", sep = "", header = FALSE, col.names = "Activity")
    testSet <- cbind(testSubject, testY, testX)

Reads in and combines all the data from the train set into one data
frame.

    ##Reading and creating the train data set
    trainSubject <- read.table("./data/train/subject_train.txt", sep = "", header = FALSE, col.names = "Subject")
    trainX <- read.table("./data/train/X_train.txt", sep = "", header = FALSE, col.names = features[,1], check.names = FALSE)
    trainY <- read.table("./data/train/Y_train.txt", sep = "", header = FALSE, col.names = "Activity")
    trainSet <- cbind(trainSubject, trainY, trainX)

The test set and train data set are then combined into one data frame.

    ##Merges the test and train data set into one data frame
    mergedSet <- rbind(testSet,trainSet)

The columns we need are then extracted from this data frame. This means
the subject, activity, and the measurements on the mean and standard
deviation for each measurement.

    ##Extracting only the columns which include subject, activity, mean and standard deviation for each measurement
    selectedSet <- mergedSet[,grepl("Subject|Activity|mean|std", names(mergedSet))]

Each activity is then renamed using descriptive activity names to make
it easier to reference.

    ##Rename activity names in selectedSet
    selectedSet$Activity <- gsub('1', 'WALKING', selectedSet$Activity)
    selectedSet$Activity <- gsub('2', 'WALKING_UPSTAIRS', selectedSet$Activity)
    selectedSet$Activity <- gsub('3', 'WALKING_DOWNSTAIRS', selectedSet$Activity)
    selectedSet$Activity <- gsub('4', 'SITTING', selectedSet$Activity)
    selectedSet$Activity <- gsub('5', 'STANDING', selectedSet$Activity)
    selectedSet$Activity <- gsub('6', 'LAYING', selectedSet$Activity)

Then the variable names are cleaned up to make them more descriptive.

    ##Cleaning up variable names in selectedSet
    colnames(selectedSet) <- gsub('^t', 'time', colnames(selectedSet))
    colnames(selectedSet) <- gsub('^f', 'freq', colnames(selectedSet))
    colnames(selectedSet) <- gsub('BodyBody', 'Body', colnames(selectedSet))
    colnames(selectedSet) <- gsub('\\()', '', colnames(selectedSet))

A tidy data set is then created, summing up the average of each variable
for each activity and each subject.

    ##Creating a tidy data set with the average of each variable for each activity and each subject
    tidySet <- selectedSet %>%
               group_by(Subject, Activity) %>%
               summarise_each(funs(mean))
