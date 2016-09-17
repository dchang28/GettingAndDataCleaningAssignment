##You should create one R script called run_analysis.R that does the following:

## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement.
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names.
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject


##Download the data files
URL <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- file.path(getwd(),"data.zip")

download.file(URL, destfile)


## Merges the training and the test sets to create one data set

##Read train files
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
datatrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
labeltrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")

##Read test files
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
datatest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
labeltest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")

##Read features file
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./data/UCI HAR Dataset/features.txt")

##Assign column names for subject files
names(subjecttrain) <- "Subject ID"
names(subjecttest) <- "Subject ID"

##Assign column names for activity label files
names(labeltrain) <- "Activity Label"
names(labeltest) <- "Activity Label"

##Assign column names for measurement files
names(datatrain) <- features$V2
names(datatest) <- features$V2

##Merge files
test <- cbind(subjecttest, labeltest, datatest)
train <- cbind(subjecttrain, labeltrain, datatrain)
mergeddata <- rbind(test, train)



## Extracts only the measurements on the mean and standard deviation for each measurement.

##Identify which measurements are for mean and standard deviation
mergeddatameanstd <- grepl("mean\\(\\)", names(mergeddata)) |
        grepl("std\\(\\)", names(mergeddata))

##Retain columns for subject ID and activity labels
mergeddatameanstd[1:2] <- TRUE

##Subset only the mean and standard deviation columns
mergeddata <- mergeddata[, mergeddatameanstd]

##Check to make sure data has been subsetted correctly for mean and standard deviation
mergeddata
View(mergeddata)



## Uses descriptive activity names to name the activities in the data set

##Replace underscore with a blank space
activitylabels = gsub("_", " ", as.character(activitylabels))
activitylabels

##Factorize Activity Label column with activity names
mergeddata$`Activity Label` <- factor(mergeddata$`Activity Label`,
                                      labels=activitylabels)

##Check to see if properly edited
View(mergeddata)




## Appropriately labels the data set with descriptive variable names

names(mergeddata)
        ##This step was performed above when column names were assigned
        ##Further information included in the Codebook



## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

library(plyr)
mergeddata2 <- aggregate(. ~`Subject ID` + `Activity Label`, mergeddata, mean)
mergeddata2 <- mergedata2[order(mergedata2$`Subject ID`,mergedata2$`Activity Label`),]
write.table(mergeddata2, file = "tidy_data.txt",row.name=FALSE)

