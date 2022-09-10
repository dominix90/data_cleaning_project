# Code book for Getting and Cleaning Data Course Project
=========================================

The repository contains the following files:

- 'README.md'
- 'run_analysis.R': The script to clean and tidy the Samsung dataset.
- 'datasetMeanGrouped.txt': Tidy dataset as required by the Getting and Cleaning Data Course Project.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

datasetMeanGrouped:
======================================

**Each record of this data set contain the average of each feature for each activity and each subject.**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccXYZ and timeGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerkXYZ and timeBodyGyroJerkXYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccXYZ, frequencyBodyAccJerkXYZ, frequencyBodyGyroXYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag. 
(Note the 'frequency' prefix to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
- mean: Mean value
- std: Standard deviation

The complete list of variables of each feature vector is:
- timeBodyAccMeanX
- timeBodyAccMeanY
- timeBodyAccMeanZ
- timeBodyAccStdX
- timeBodyAccStdY
- timeBodyAccStdZ
- timeGravityAccMeanX
- timeGravityAccMeanY
- timeGravityAccMeanZ
- timeGravityAccStdX
- timeGravityAccStdY
- timeGravityAccStdZ
- timeBodyAccJerkMeanX
- timeBodyAccJerkMeanY
- timeBodyAccJerkMeanZ
- timeBodyAccJerkStdX
- timeBodyAccJerkStdY
- timeBodyAccJerkStdZ
- timeBodyGyroMeanX
- timeBodyGyroMeanY
- timeBodyGyroMeanZ
- timeBodyGyroStdX
- timeBodyGyroStdY
- timeBodyGyroStdZ
- timeBodyGyroJerkMeanX
- timeBodyGyroJerkMeanY
- timeBodyGyroJerkMeanZ
- timeBodyGyroJerkStdX
- timeBodyGyroJerkStdY
- timeBodyGyroJerkStdZ
- timeBodyAccMagMean
- timeBodyAccMagStd
- timeGravityAccMagMean
- timeGravityAccMagStd
- timeBodyAccJerkMagMean
- timeBodyAccJerkMagStd
- timeBodyGyroMagMean
- timeBodyGyroMagStd
- timeBodyGyroJerkMagMean
- timeBodyGyroJerkMagStd
- frequencyBodyAccMeanX
- frequencyBodyAccMeanY
- frequencyBodyAccMeanZ
- frequencyBodyAccStdX
- frequencyBodyAccStdY
- frequencyBodyAccStdZ
- frequencyBodyAccJerkMeanX
- frequencyBodyAccJerkMeanY
- frequencyBodyAccJerkMeanZ
- frequencyBodyAccJerkStdX
- frequencyBodyAccJerkStdY
- frequencyBodyAccJerkStdZ
- frequencyBodyGyroMeanX
- frequencyBodyGyroMeanY
- frequencyBodyGyroMeanZ
- frequencyBodyGyroStdX
- frequencyBodyGyroStdY
- frequencyBodyGyroStdZ
- frequencyBodyAccMagMean
- frequencyBodyAccMagStd
- frequencyBodyAccJerkMagMean
- frequencyBodyAccJerkMagStd
- frequencyBodyGyroMagMean
- frequencyBodyGyroMagStd
- frequencyBodyGyroJerkMagMean
- frequencyBodyGyroJerkMagStd

**As already mentioned at the beginning of the section, for each of the above feature we computed the average for each activity and each subject.**
