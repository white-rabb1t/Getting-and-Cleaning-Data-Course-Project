##Load packages
library(dplyr)

##Reading features. Column 1 is skipped as it only contains row names
features <- read.table("./data/features.txt", sep = "", header = FALSE)[2]

##Reading and creating the test data set
testSubject <- read.table("./data/test/subject_test.txt", sep = "", header = FALSE, col.names = "Subject")
testX <- read.table("./data/test/X_test.txt", sep = "", header = FALSE, col.names = features[,1], check.names = FALSE)
testY <- read.table("./data/test/Y_test.txt", sep = "", header = FALSE, col.names = "Activity")
testSet <- cbind(testSubject, testY, testX)

##Reading and creating the train data set
trainSubject <- read.table("./data/train/subject_train.txt", sep = "", header = FALSE, col.names = "Subject")
trainX <- read.table("./data/train/X_train.txt", sep = "", header = FALSE, col.names = features[,1], check.names = FALSE)
trainY <- read.table("./data/train/Y_train.txt", sep = "", header = FALSE, col.names = "Activity")
trainSet <- cbind(trainSubject, trainY, trainX)

##Merges the test and train data set into one data frame
mergedSet <- rbind(testSet,trainSet)

##Extracting only the columns which include subject, activity, mean and standard deviation for each measurement
selectedSet <- mergedSet[,grepl("Subject|Activity|mean|std", names(mergedSet))]

##Rename activity names in selectedSet
selectedSet$Activity <- gsub('1', 'WALKING', selectedSet$Activity)
selectedSet$Activity <- gsub('2', 'WALKING_UPSTAIRS', selectedSet$Activity)
selectedSet$Activity <- gsub('3', 'WALKING_DOWNSTAIRS', selectedSet$Activity)
selectedSet$Activity <- gsub('4', 'SITTING', selectedSet$Activity)
selectedSet$Activity <- gsub('5', 'STANDING', selectedSet$Activity)
selectedSet$Activity <- gsub('6', 'LAYING', selectedSet$Activity)

##Cleaning up variable names in selectedSet
colnames(selectedSet) <- gsub('^t', 'time', colnames(selectedSet))
colnames(selectedSet) <- gsub('^f', 'freq', colnames(selectedSet))
colnames(selectedSet) <- gsub('BodyBody', 'Body', colnames(selectedSet))
colnames(selectedSet) <- gsub('\\()', '', colnames(selectedSet))

##Creating a tidy data set with the average of each variable for each activity and each subject
tidySet <- selectedSet %>%
           group_by(Subject, Activity) %>%
           summarise_each(funs(mean))

