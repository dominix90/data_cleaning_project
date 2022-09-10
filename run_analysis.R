library(dplyr)

# STEP 0. The working directory has to be set on 
# the same directory as this script
# setwd("~/...")

# Read data
XTrain <- read.table("train/X_train.txt")
XTest <- read.table("test/X_test.txt")
yTrain <- read.table("train/y_train.txt")
yTest <- read.table("test/y_test.txt")

# Read subject
subjectTrain <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")
colnames(subjectTrain) <- c("subjectId")
colnames(subjectTest) <- c("subjectId")
subjects <- rbind(subjectTrain, subjectTest)

# STEP 1. Merges the training and the test 
# sets to create one data set
X <- rbind(XTrain, XTest)
y <- rbind(yTrain, yTest)

# Read and clean column names
featureNamesFile <- file("features.txt")
featureNames <- readLines(featureNamesFile)
featureNames <- gsub("[0-9]{1,3} ","",featureNames)

# Assign column names
colnames(X) <- featureNames
colnames(y) <- c("activity")

# Add subject column
X <- cbind(subjects, X)

# STEP 2. Extract only the measurements on the 
# mean and standard deviation for each measurement
featureNames <- colnames(X)
goodCols <- grepl("(subjectId)|(mean\\(\\))|(std\\(\\))", featureNames)
goodData <- X[,goodCols]

# STEP 3. Use descriptive activity names 
# to name the activities in the data set
descriptiveNames <- readLines(file("activity_labels.txt"))
namesAssociation <- strsplit(descriptiveNames, " ")
dataset <- cbind(goodData, y)
for(act in namesAssociation){
    dataset["activity"][dataset["activity"] == act[1]] <- act[2]
}

# STEP 4. Appropriately labels the data set with 
# descriptive variable names.
datasetColNames <- colnames(dataset)
datasetColNames <- gsub("\\(\\)","",datasetColNames)
datasetColNames <- gsub("-m","M",datasetColNames)
datasetColNames <- gsub("-s","S",datasetColNames)
datasetColNames <- gsub("-","",datasetColNames)
datasetColNames <- gsub("^t","time",datasetColNames)
datasetColNames <- gsub("^f","frequency",datasetColNames)
datasetColNames <- gsub("BodyBody","Body",datasetColNames)
colnames(dataset) <- datasetColNames

# STEP 5. From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable 
# for each activity and each subject.
datasetMeanGrouped <- dataset %>% group_by(subjectId, activity) %>% summarise_all("mean")

# Store the results
write.table(datasetMeanGrouped, file = "output/datasetMeanGrouped.txt", row.names = FALSE)