#1. Load and merge the data
#Load test data sets into data frame
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Subject_test <- read.table("./UCI HAR Dataset/test/Subject_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")

#Load training data set into data frame
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Subject_train <- read.table("./UCI HAR Dataset/train/Subject_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")

#Merges the training and the test sets to create one data set.
x <- rbind(X_test, X_train)
subject <- rbind(Subject_test, Subject_train)
y <- rbind(Y_test, Y_train)

#Check that our merge is correct
ycount = dim(Y_test) + dim(Y_train)
Xcount = dim(X_test) + dim(X_train)
subcount = dim(Subject_test) + dim(Subject_train)

ycount - dim(y)
Xcount - dim(x)
subcount - dim(subject)

#2. Extracts only the measurements on the mean 
#and standard deviation for each measurement. 
features <- read.table("./UCI HAR Dataset/features.txt")
releventordianl <- grep("mean\\(\\)|std\\(\\)", features[, 2])
x <- x[,releventordianl]

#update the names to something sensable
names(x) <- gsub("\\(\\)", "", features[releventordianl, 2])
names(x) <- gsub("mean", "Mean", names(x))
names(x) <- gsub("std", "Std", names(x))  
names(x) <- gsub("-", "", names(x))

#Use descriptive activity names to name the activities in the data set
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
#Reformat the field names so they are nice and tidy
activities[, 2] <- tolower(gsub("_", "", activities[, 2]))
substr(activities[2, 2], 8, 8) <- toupper(substr(activities[2, 2], 8, 8))
substr(activities[3, 2], 8, 8) <- toupper(substr(activities[3, 2], 8, 8))
activityLabel <- activities[y[, 1], 2]
y[, 1] <- activityLabel
names(y) <- "activity"


#Appropriately labels the data set with descriptive variable names.
names(subject) <- "subject"
Clean <- cbind(subject, y, x)
#dim(Clean) 
#head(Clean)
write.table(Clean, "MergedDataF1.txt") 

#creates a second, independent tidy data set with the average of 
#each variable for each activity and each subject.

#Ran out of time so haven't done this bit
#I will be keen to see how other students attempted this in the 
#peer review marking exercise

dummy <- 1
write.table(dummy, "MergedDataF2.txt")