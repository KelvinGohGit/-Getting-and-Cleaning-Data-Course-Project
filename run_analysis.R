library(data.table)
library(dplyr)
#Download dataset
if(!file.exists("./project_data")){dir.create("./project_data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./project_data/Galaxy S.zip")

# Loading the data
features <- read.table("./project_data/UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("./project_data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activity"))

#loading test data
subject_test <- read.table("./project_data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("./project_data/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("./project_data/UCI HAR Dataset/test/y_test.txt", col.names = "activityID")

#loading train data
subject_train <- read.table("./project_data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("./project_data/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("./project_data/UCI HAR Dataset/train/y_train.txt", col.names = "activityID")


#Merges the training and the test sets to create one data set.

x<-rbind(x_train, x_test)
y<-rbind(y_train, y_test)
subject<-rbind(subject_train, subject_test)
MergedAll<-cbind(subject,y,x)

#Extracts only the measurements on the mean and standard deviation for each measurement.

tidy_mean_std<-MergedAll %>% select(subject,activityID, contains("mean"), contains ("std"))

#Uses descriptive activity names to name the activities in the data set

tidy_mean_std$activityID<-activities[tidy_mean_std$activityID,2]

# labels the data set with descriptive variable names.
names(tidy_mean_std)[2] = "activity"
names(tidy_mean_std)<-gsub("Acc", "Accelerometer", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("Gyro", "Gyroscope", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("BodyBody", "Body", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("Mag", "Magnitude", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("^t", "Time", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("^f", "Frequency", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("tBody", "TimeBody", names(tidy_mean_std))
names(tidy_mean_std)<-gsub("std", "Standard Deviation", names(tidy_mean_std))

#Creates a second,independent tidy data set and ouput it

library(dplyr)
Final_Tidy_Data <- tidy_mean_std %>% 
  group_by(subject, activity) %>% 
  summarise_all(funs(mean))
write.table(Final_Tidy_Data, "Final_Tidy_Data.txt", row.name=FALSE)



