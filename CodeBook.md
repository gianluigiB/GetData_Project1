CodeBook
========================================================

Data frames loaded from files

subject_test <- UCI HAR Dataset/test/subject_test.txt: 2947 obs for variable subjectID (subject wearing the Samsung device)
activity_test <- UCI HAR Dataset/test/y_test.txt: 2947 obs for variable activity (physical activity performed by subject)
features_test <- UCI HAR Dataset/test/X_test.txt: 2947 obs for 591 measure variables named respectively after the feature.txt file

subject_train <- UCI HAR Dataset/train/subject_train.txt: 7352 obs for variable subjectID (subject wearing the Samsung device)
activity_train <- UCI HAR Dataset/train/y_train.txt: 7352 obs for variable activity (physical activity performed by subject)
features_train <- UCI HAR Dataset/train/X_train.txt: 7352 obs for 591 measure variables named respectively after the feature.txt file

Activity values in both files are integers. The meaning of each value is indicated in the file activity_labels.txt:
id  activity
1   Walking
2	  Walking Upstairs
3	  Walking Downstairs
4	  Sitting
5	  Standing
6	  Laying
Those are also the values used in the tidy dataset.

The variable subjectID assumes the values 1 thru 30 and identifies the subject wearing the Samsung device

The 86 numerical variables indicated by the assignment are (in their most descriptive version):
timeBodyAccelerationMeanX
timeBodyAccelerationMeanY
timeBodyAccelerationMeanZ
timeBodyAccelerationStdX
timeBodyAccelerationStdY
timeBodyAccelerationStdZ
timeGravityAccelerationMeanX
timeGravityAccelerationMeanY
timeGravityAccelerationMeanZ
timeGravityAccelerationStdX
timeGravityAccelerationStdY
timeGravityAccelerationStdZ
timeBodyAccelerationJerkMeanX
timeBodyAccelerationJerkMeanY
timeBodyAccelerationJerkMeanZ
timeBodyAccelerationJerkStdX
timeBodyAccelerationJerkStdY
timeBodyAccelerationJerkStdZ
timeBodyAngularVelocityMeanX
timeBodyAngularVelocityMeanY
timeBodyAngularVelocityMeanZ
timeBodyAngularVelocityStdX
timeBodyAngularVelocityStdY
timeBodyAngularVelocityStdZ
timeBodyAngularVelocityJerkMeanX
timeBodyAngularVelocityJerkMeanY
timeBodyAngularVelocityJerkMeanZ
timeBodyAngularVelocityJerkStdX
timeBodyAngularVelocityJerkStdY
timeBodyAngularVelocityJerkStdZ
timeBodyAccelerationMagMean
timeBodyAccelerationMagStd
timeGravityAccelerationMagMean
timeGravityAccelerationMagStd
timeBodyAccelerationJerkMagMean
timeBodyAccelerationJerkMagStd
timeBodyAngularVelocityMagMean
timeBodyAngularVelocityMagStd
timeBodyAngularVelocityJerkMagMean
timeBodyAngularVelocityJerkMagStd
frequencyBodyAccelerationMeanX
frequencyBodyAccelerationMeanY
frequencyBodyAccelerationMeanZ
frequencyBodyAccelerationStdX
frequencyBodyAccelerationStdY
frequencyBodyAccelerationStdZ
frequencyBodyAccelerationMeanFreqX
frequencyBodyAccelerationMeanFreqY
frequencyBodyAccelerationMeanFreqZ
frequencyBodyAccelerationJerkMeanX
frequencyBodyAccelerationJerkMeanY
frequencyBodyAccelerationJerkMeanZ
frequencyBodyAccelerationJerkStdX
frequencyBodyAccelerationJerkStdY
frequencyBodyAccelerationJerkStdZ
frequencyBodyAccelerationJerkMeanFreqX
frequencyBodyAccelerationJerkMeanFreqY
frequencyBodyAccelerationJerkMeanFreqZ
frequencyBodyAngularVelocityMeanX
frequencyBodyAngularVelocityMeanY
frequencyBodyAngularVelocityMeanZ
frequencyBodyAngularVelocityStdX
frequencyBodyAngularVelocityStdY
frequencyBodyAngularVelocityStdZ
frequencyBodyAngularVelocityMeanFreqX
frequencyBodyAngularVelocityMeanFreqY
frequencyBodyAngularVelocityMeanFreqZ
frequencyBodyAccelerationMagMean
frequencyBodyAccelerationMagStd
frequencyBodyAccelerationMagMeanFreq
frequencyBodyBodyAccelerationJerkMagMean
frequencyBodyBodyAccelerationJerkMagStd
frequencyBodyBodyAccelerationJerkMagMeanFreq
frequencyBodyBodyAngularVelocityMagMean
frequencyBodyBodyAngularVelocityMagStd
frequencyBodyBodyAngularVelocityMagMeanFreq
frequencyBodyBodyAngularVelocityJerkMagMean
frequencyBodyBodyAngularVelocityJerkMagStd
frequencyBodyBodyAngularVelocityJerkMagMeanFreq
angleTBodyAccelerationMeanGravity
angleTBodyAccelerationJerkMeanGravityMean
angleTBodyAngularVelocityMeanGravityMean
angleTBodyAngularVelocityJerkMeanGravityMean
angleXGravityMean
angleYGravityMean
angleZGravityMean

Additional info from the original dataset publisher

The unit for all the angular velocity variables is radians/second.
The unit for all the acceleration vriables is standard gravity units 'g'.
All numerical measures are normalized and bounded within [-1,1].

angle: Angle between two vectors.
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
