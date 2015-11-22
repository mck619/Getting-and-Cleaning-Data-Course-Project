	
###Raw data variable information:


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

##Unit specification:
The following information was provided with raw data concerning the units. I have no experience with physics so I don't know what else to include here

acc variables: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

gyro variables: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

jerk variables (info from wikipedia):In physics, jerk, also known as jolt, surge, or lurch, is the rate of change of acceleration; that is, the derivative of acceleration with respect to time, and as such the second derivative of velocity, or the third derivative of position.

Notes: 
======
- Features are normalized and bounded within [-1,1].

###Data Transformations:

The activity number was transformed to the actual activity name based on the provided guide:

	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING

After selecting only the above mentioned variables from the raw data set, we are left the mean and standard deviations of 33 measurements, thus there are 66 total variables in the final data set.

The data was then divided up by Subject. The mean of each of the 66 variables was then calculated for each activity preformed by the subject. These means are the variables provided in the data set. They are named as follows:

"SubjectID"
"Activity"
"mean of tBodyAcc-mean()-X"
"mean of tBodyAcc-mean()-Y"
"mean of tBodyAcc-mean()-Z"
"mean of tGravityAcc-mean()-X"
"mean of tGravityAcc-mean()-Y"
"mean of tGravityAcc-mean()-Z"
"mean of tBodyAccJerk-mean()-X"
"mean of tBodyAccJerk-mean()-Y"
"mean of tBodyAccJerk-mean()-Z"
"mean of tBodyGyro-mean()-X"
"mean of tBodyGyro-mean()-Y"
"mean of tBodyGyro-mean()-Z"
"mean of tBodyGyroJerk-mean()-X"
"mean of tBodyGyroJerk-mean()-Y"
"mean of tBodyGyroJerk-mean()-Z"
"mean of tBodyAccMag-mean()"
"mean of tGravityAccMag-mean()"
"mean of tBodyAccJerkMag-mean()"
"mean of tBodyGyroMag-mean()"
"mean of tBodyGyroJerkMag-mean()"
"mean of fBodyAcc-mean()-X"
"mean of fBodyAcc-mean()-Y"
"mean of fBodyAcc-mean()-Z"
"mean of fBodyAccJerk-mean()-X"
"mean of fBodyAccJerk-mean()-Y"
"mean of fBodyAccJerk-mean()-Z"
"mean of fBodyGyro-mean()-X"
"mean of fBodyGyro-mean()-Y"
"mean of fBodyGyro-mean()-Z"
"mean of fBodyAccMag-mean()"
"mean of fBodyBodyAccJerkMag-mean()"
"mean of fBodyBodyGyroMag-mean()"
"mean of fBodyBodyGyroJerkMag-mean()"
"mean of tBodyAcc-std()-X"
"mean of tBodyAcc-std()-Y"
"mean of tBodyAcc-std()-Z"
"mean of tGravityAcc-std()-X"
"mean of tGravityAcc-std()-Y"
"mean of tGravityAcc-std()-Z"
"mean of tBodyAccJerk-std()-X"
"mean of tBodyAccJerk-std()-Y"
"mean of tBodyAccJerk-std()-Z"
"mean of tBodyGyro-std()-X"
"mean of tBodyGyro-std()-Y"
"mean of tBodyGyro-std()-Z"
"mean of tBodyGyroJerk-std()-X"
"mean of tBodyGyroJerk-std()-Y"
"mean of tBodyGyroJerk-std()-Z"
"mean of tBodyAccMag-std()"
"mean of tGravityAccMag-std()"
"mean of tBodyAccJerkMag-std()"
"mean of tBodyGyroMag-std()"
"mean of tBodyGyroJerkMag-std()"
"mean of fBodyAcc-std()-X"
"mean of fBodyAcc-std()-Y"
"mean of fBodyAcc-std()-Z"
"mean of fBodyAccJerk-std()-X"
"mean of fBodyAccJerk-std()-Y"
"mean of fBodyAccJerk-std()-Z"
"mean of fBodyGyro-std()-X"
"mean of fBodyGyro-std()-Y"
"mean of fBodyGyro-std()-Z"
"mean of fBodyAccMag-std()"
"mean of fBodyBodyAccJerkMag-std()"
"mean of fBodyBodyGyroMag-std()"
"mean of fBodyBodyGyroJerkMag-std()"



