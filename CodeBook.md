## The tidy_dataset.txt file

This dataset was created used the run_analysis.R script that is described in README.md. 

### Background
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

### Raw data
The six activities were stored in Y-data files (both for train and test). The measurements were stored in X-data files (both for train and test). 561 varaibles were measured per volunteer. 

### Getting and cleaning the data
Y-data and X-data files for both train and test data were merged and also subject data was added. Form this data table only those columns that involved mean and standard deviation related data were kept. Column names were cleaned ip and made descriptive. Eventually for each subject in the data table, for each activity the average of its measurements was calculated. The result of that was written to tidy_dataset.txt.

### Variables in tidy_dataset.txt 
All variables (columns) in tidy_dataset.txt are given below. 

* subject: the volunteer
* acticity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING
* Average: since for all measurements the average per subject per activity was determined
* T for time related measurements or F for frequency related measurements
* Body or Gravity: acceleration signal was  separated into body and gravity acceleration signals using a low pass Butterworth filter
* Acc or Gyro: measurements for the accelerometer or gyroscope
* Jerk: body linear acceleration and angular velocity were derived in time to obtain Jerk signals
* Mag: magnitude of three-dimensional signals calculated using the Euclidean norm
* Mean or Std: mean or standard deviation values
* X, Y, Z: for  the accelerometer and gyroscope respectively, 3-axial (X, Y, Z) linear acceleration and 3-axial (X, Y, Z) angular velocity were captured

"subject"
"activity"
"AverageTBodyAccMeanX"
"AverageTBodyAccMeanY"
"AverageTBodyAccMeanZ"
"AverageTBodyAccStdX"
"AverageTBodyAccStdY"
"AverageTBodyAccStdZ"
"AverageTGravityAccMeanX"
"AverageTGravityAccMeanY"
"AverageTGravityAccMeanZ"
"AverageTGravityAccStdX"
"AverageTGravityAccStdY"
"AverageTGravityAccStdZ"
"AverageTBodyAccJerkMeanX"
"AverageTBodyAccJerkMeanY"
"AverageTBodyAccJerkMeanZ"
"AverageTBodyAccJerkStdX"
"AverageTBodyAccJerkStdY"
"AverageTBodyAccJerkStdZ"
"AverageTBodyGyroMeanX"
"AverageTBodyGyroMeanY"
"AverageTBodyGyroMeanZ"
"AverageTBodyGyroStdX"
"AverageTBodyGyroStdY"
"AverageTBodyGyroStdZ"
"AverageTBodyGyroJerkMeanX"
"AverageTBodyGyroJerkMeanY"
"AverageTBodyGyroJerkMeanZ"
"AverageTBodyGyroJerkStdX"
"AverageTBodyGyroJerkStdY"
"AverageTBodyGyroJerkStdZ"
"AverageTBodyAccMagMean"
"AverageTBodyAccMagStd"
"AverageTGravityAccMagMean"
"AverageTGravityAccMagStd"
"AverageTBodyAccJerkMagMean"
"AverageTBodyAccJerkMagStd"
"AverageTBodyGyroMagMean"
"AverageTBodyGyroMagStd"
"AverageTBodyGyroJerkMagMean"
"AverageTBodyGyroJerkMagStd"
"AverageFBodyAccMeanX"
"AverageFBodyAccMeanY"
"AverageFBodyAccMeanZ"
"AverageFBodyAccStdX"
"AverageFBodyAccStdY"
"AverageFBodyAccStdZ"
"AverageFBodyAccJerkMeanX"
"AverageFBodyAccJerkMeanY"
"AverageFBodyAccJerkMeanZ"
"AverageFBodyAccJerkStdX"
"AverageFBodyAccJerkStdY"
"AverageFBodyAccJerkStdZ"
"AverageFBodyGyroMeanX"
"AverageFBodyGyroMeanY"
"AverageFBodyGyroMeanZ"
"AverageFBodyGyroStdX"
"AverageFBodyGyroStdY"
"AverageFBodyGyroStdZ"
"AverageFBodyAccMagMean"
"AverageFBodyAccMagStd"
"AverageFBodyBodyAccJerkMagMean"
"AverageFBodyBodyAccJerkMagStd"
"AverageFBodyBodyGyroMagMean"
"AverageFBodyBodyGyroMagStd"
"AverageFBodyBodyGyroJerkMagMean"
"AverageFBodyBodyGyroJerkMagStd"