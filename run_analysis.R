# step 1 - Merges the training and the test sets to create one data set.

#getting train data and combine via column
Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
traindata <-cbind(Xtrain, Ytrain, subjecttrain)

#getting test data and combine via column
Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testdata <- cbind(Xtest, Ytest, subjecttest)

# combine train data with test data 
combinedData <- rbind(traindata,testdata)

# Step 2- Extracts only the measurements 
# on the mean and standard deviation for each measurement.
features <- read.table("./data/UCI HAR Dataset/features.txt")
meanORstd <- grep("-mean()|-std()",features$V2)
meanFreq <- grep("-meanFreq()", features$V2)

# grep("mean") also selected "meanFreq". 
# below code will remove meanFreq from mean or std column selection
# first change the meanFreq into NA 
for (i in 1: length(meanORstd)){
        if(meanORstd[i] %in% meanFreq){
        meanORstd[i] <- NA
        }
}
# then simply choose only non-NA data
value <- meanORstd[!is.na(meanORstd)]

# lastly, choose only mean or std columns AND activity, subject columns
meanstd <- combinedData[, c(value, 562,563)]


# Step 3 - Uses descriptive activity names 
# to name the activities in the data set
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
for(i in 1:nrow(activitylabels)){
        meanstd$V1.1 <- gsub(activitylabels[i,1],activitylabels[i,2],meanstd$V1.1)
}

# Step 4- Appropriately labels the data set 
# with descriptive variable names.
names(meanstd) <- c(as.character(features$V2[value]),"activity","subject")


# Step 5- From the data set in step 4, 
# creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
library(reshape2)
firstD <- melt(meanstd, id.vars = c("activity", "subject"), 
               variable.name = "measurement", 
               value.name = "measured_value")
head(firstD)
secD <- dcast(firstD, activity + subject ~ measurement, mean)
names(secD)[3:68] <- paste0("avg of ", names(secD)[3:68])
save(secD, file = "runAnalysis.RData")

codeBook <- names(secD)
save(codeBook, file = "codeBook.RData")
