# Codebook.md

The following file is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

##The Data

The original dataset was obtained from http://bit.ly/1p1sdWC and the dataset homepage can be found at http://bit.ly/1mEvWTG

As per the data homepage the "Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."(1)

##The variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBody

The variables within the dataset are as follows

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Each will have a value relating to 

mean(): Mean value
std(): Standard deviation

##The transformation

The transformation applied to the dataset is as follows

1. Read in all test datasets to data frames
2. Read in all training datasets to data frames
3. Bind the test and the training datasets together for the x, y and subject datasets
4. Check the row counts of the initial datasets and the combined ones to ensure we have combined the right data!
5. Read the file "features.txt" which lists all the features
6. Select only those features which include "mean" or "std" (standard deviation) from the feature list
7. Go and reformat the the names so they read a little better than they are in the source data
8. Go read the activity labels from the "activity_labels.txt" file
9. Reformat the text in the activity labels so it looks nice
10. Assign a name of "activity" to all attributes in the y dataset
11. Assign a name of "subject" to all the attributes in the subject dataset
12. bind the subject, y and x data frames together
13. Write the data out to  MergedDataF1.txt
14. Create a dummy data frame and output the file MergedDataF1.txt
Citations

(1) UCI Machine Learning Repository (2013) 
Human Activity Recognition Using Smartphones Data Set 
[Online] Available from:
http://bit.ly/1mEvWTG
m.
[Accessed: 25th July 2015]. 
