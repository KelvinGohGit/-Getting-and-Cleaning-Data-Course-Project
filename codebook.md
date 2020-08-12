
## Code book : Getting and Cleaning Data course project
_______________________________________________________________________________
Below is the Codebook for Final_Tidy_Data.txt data file

## Data
_______________________________________________________________________________
The Final_Tidy_Data.txt data file is a text delimited data 
The first row contains the names of the variables name, and the following rows contain the values of these variables.
Each row contains, for a given subject and activity, 79 averaged signal measurements.

## Identifiers
_______________________________________________________________________________
.	subject - The ID of the test subject
.	activity - The type of activity performed when the corresponding measurements were taken

## Variables Name 
_______________________________________________________________________________
TimeBodyAccelerometer.mean...X
TimeBodyAccelerometer.mean...Y
TimeBodyAccelerometer.mean...Z
TimeGravityAccelerometer.mean...X
TimeGravityAccelerometer.mean...Y
TimeGravityAccelerometer.mean...Z
TimeBodyAccelerometerJerk.mean...X
TimeBodyAccelerometerJerk.mean...Y
TimeBodyAccelerometerJerk.mean...Z
TimeBodyGyroscope.mean...X
TimeBodyGyroscope.mean...Y
TimeBodyGyroscope.mean...Z
TimeBodyGyroscopeJerk.mean...X
TimeBodyGyroscopeJerk.mean...Y
TimeBodyGyroscopeJerk.mean...Z
TimeBodyAccelerometerMagnitude.mean..
TimeGravityAccelerometerMagnitude.mean..
TimeBodyAccelerometerJerkMagnitude.mean..
TimeBodyGyroscopeMagnitude.mean..
TimeBodyGyroscopeJerkMagnitude.mean..
FrequencyBodyAccelerometer.mean...X
FrequencyBodyAccelerometer.mean...Y
FrequencyBodyAccelerometer.mean...Z
FrequencyBodyAccelerometer.meanFreq...X
FrequencyBodyAccelerometer.meanFreq...Y
FrequencyBodyAccelerometer.meanFreq...Z
FrequencyBodyAccelerometerJerk.mean...X
FrequencyBodyAccelerometerJerk.mean...Y
FrequencyBodyAccelerometerJerk.mean...Z
FrequencyBodyAccelerometerJerk.meanFreq...X
FrequencyBodyAccelerometerJerk.meanFreq...Y
FrequencyBodyAccelerometerJerk.meanFreq...Z
FrequencyBodyGyroscope.mean...X
FrequencyBodyGyroscope.mean...Y
FrequencyBodyGyroscope.mean...Z
FrequencyBodyGyroscope.meanFreq...X
FrequencyBodyGyroscope.meanFreq...Y
FrequencyBodyGyroscope.meanFreq...Z
FrequencyBodyAccelerometerMagnitude.mean..
FrequencyBodyAccelerometerMagnitude.meanFreq..
FrequencyBodyAccelerometerJerkMagnitude.mean..
FrequencyBodyAccelerometerJerkMagnitude.meanFreq..
FrequencyBodyGyroscopeMagnitude.mean..
FrequencyBodyGyroscopeMagnitude.meanFreq..
FrequencyBodyGyroscopeJerkMagnitude.mean..
FrequencyBodyGyroscopeJerkMagnitude.meanFreq..
angle.TimeBodyAccelerometerMean.gravity.
angle.TimeBodyAccelerometerJerkMean..gravityMean.
angle.TimeBodyGyroscopeMean.gravityMean.
angle.TimeBodyGyroscopeJerkMean.gravityMean.
angle.X.gravityMean.
angle.Y.gravityMean.
angle.Z.gravityMean.
TimeBodyAccelerometer.Standard Deviation...X
TimeBodyAccelerometer.Standard Deviation...Y
TimeBodyAccelerometer.Standard Deviation...Z
TimeGravityAccelerometer.Standard Deviation...X
TimeGravityAccelerometer.Standard Deviation...Y
TimeGravityAccelerometer.Standard Deviation...Z
TimeBodyAccelerometerJerk.Standard Deviation...X
TimeBodyAccelerometerJerk.Standard Deviation...Y
TimeBodyAccelerometerJerk.Standard Deviation...Z
TimeBodyGyroscope.Standard Deviation...X
TimeBodyGyroscope.Standard Deviation...Y
TimeBodyGyroscope.Standard Deviation...Z
TimeBodyGyroscopeJerk.Standard Deviation...X
TimeBodyGyroscopeJerk.Standard Deviation...Y
TimeBodyGyroscopeJerk.Standard Deviation...Z
TimeBodyAccelerometerMagnitude.Standard Deviation..
TimeGravityAccelerometerMagnitude.Standard Deviation..
TimeBodyAccelerometerJerkMagnitude.Standard Deviation..
TimeBodyGyroscopeMagnitude.Standard Deviation..
TimeBodyGyroscopeJerkMagnitude.Standard Deviation..
FrequencyBodyAccelerometer.Standard Deviation...X
FrequencyBodyAccelerometer.Standard Deviation...Y
FrequencyBodyAccelerometer.Standard Deviation...Z
FrequencyBodyAccelerometerJerk.Standard Deviation...X
FrequencyBodyAccelerometerJerk.Standard Deviation...Y
FrequencyBodyAccelerometerJerk.Standard Deviation...Z
FrequencyBodyGyroscope.Standard Deviation...X
FrequencyBodyGyroscope.Standard Deviation...Y
FrequencyBodyGyroscope.Standard Deviation...Z
FrequencyBodyAccelerometerMagnitude.Standard Deviation..
FrequencyBodyAccelerometerJerkMagnitude.Standard Deviation..
FrequencyBodyGyroscopeMagnitude.Standard Deviation..
FrequencyBodyGyroscopeJerkMagnitude.Standard Deviation..

## Data Sources
_______________________________________________________________________________
Data source is downloaded from  at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following steps were taken and apply to the source data:
1.	Merges the training and the test sets to create one data set.

2.	Extracts only the measurements on the mean and standard deviation for each measurement.

3.	The activity label was replaced with descriptive activity names as 
  .	WALKING (value 1): subject was walking during the test
  .	WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
  .	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
  .	SITTING (value 4): subject was sitting during the test
  .	STANDING (value 5): subject was standing during the test
  .	LAYING (value 6): subject was laying down during the test

4.	Variable label in the data set were replaced with descriptive variable names. i.e. tBodyAcc-mean()-X  were replaced with more descriptive names  TimeBodyAccelerometer.mean...X

5.	Create new dataset, independent tidy data set with the average of each variable for each activity and each subject. The new dataset is named as Final_Tidy_Data.txtt
