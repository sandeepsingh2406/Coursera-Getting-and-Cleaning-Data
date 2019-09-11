
# Codebook

This code book describes the variables, the data, summaries calculated, and any transformations or work performed to clean up the data.

* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
* Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
* The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). T

* The R script file is called run_analysis.R which generates the output file tidyData_aggregated.txt

-----------------------

Below are the summaries and transformations happening in the R file:

1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables Generated
-------------------

(Output file: tidyData_aggregated.txt)


subject  
activity_names  
timeBodyAcceleration-mean()-X  
timeBodyAcceleration-mean()-Y  
timeBodyAcceleration-mean()-Z  
timeBodyAcceleration-std()-X  
timeBodyAcceleration-std()-Y  
timeBodyAcceleration-std()-Z  
timeGravityAcceleration-mean()-X  
timeGravityAcceleration-mean()-Y  
timeGravityAcceleration-mean()-Z  
timeGravityAcceleration-std()-X  
timeGravityAcceleration-std()-Y  
timeGravityAcceleration-std()-Z  
timeBodyAccelerationJerk-mean()-X  
timeBodyAccelerationJerk-mean()-Y  
timeBodyAccelerationJerk-mean()-Z  
timeBodyAccelerationJerk-std()-X  
timeBodyAccelerationJerk-std()-Y  
timeBodyAccelerationJerk-std()-Z  
timeBodyGyroscope-mean()-X  
timeBodyGyroscope-mean()-Y  
timeBodyGyroscope-mean()-Z  
timeBodyGyroscope-std()-X  
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z  
timeBodyGyroscopeJerk-mean()-X  
timeBodyGyroscopeJerk-mean()-Y  
timeBodyGyroscopeJerk-mean()-Z  
timeBodyGyroscopeJerk-std()-X  
timeBodyGyroscopeJerk-std()-Y  
timeBodyGyroscopeJerk-std()-Z  
timeBodyAccelerationMagnitude-mean()  
timeBodyAccelerationMagnitude-std()  
timeGravityAccelerationMagnitude-mean()  
timeGravityAccelerationMagnitude-std()  
timeBodyAccelerationJerkMagnitude-mean()  
timeBodyAccelerationJerkMagnitude-std()  
timeBodyGyroscopeMagnitude-mean()  
timeBodyGyroscopeMagnitude-std()  
timeBodyGyroscopeJerkMagnitude-mean()  
timeBodyGyroscopeJerkMagnitude-std()  
frequencyBodyAcceleration-mean()-X  
frequencyBodyAcceleration-mean()-Y  
frequencyBodyAcceleration-mean()-Z  
frequencyBodyAcceleration-std()-X  
frequencyBodyAcceleration-std()-Y  
frequencyBodyAcceleration-std()-Z  
frequencyBodyAccelerationJerk-mean()-X  
frequencyBodyAccelerationJerk-mean()-Y  
frequencyBodyAccelerationJerk-mean()-Z  
frequencyBodyAccelerationJerk-std()-X  
frequencyBodyAccelerationJerk-std()-Y  
frequencyBodyAccelerationJerk-std()-Z  
frequencyBodyGyroscope-mean()-X  
frequencyBodyGyroscope-mean()-Y  
frequencyBodyGyroscope-mean()-Z  
frequencyBodyGyroscope-std()-X  
frequencyBodyGyroscope-std()-Y  
frequencyBodyGyroscope-std()-Z  
frequencyBodyAccelerationMagnitude-mean()  
frequencyBodyAccelerationMagnitude-std()  
frequencyBodyBodyAccelerationJerkMagnitude-mean()  
frequencyBodyBodyAccelerationJerkMagnitude-std()  
frequencyBodyBodyGyroscopeMagnitude-mean()  
frequencyBodyBodyGyroscopeMagnitude-std()  
frequencyBodyBodyGyroscopeJerkMagnitude-mean()  
frequencyBodyBodyGyroscopeJerkMagnitude-std()  

------------------------------------------------

Some of the expansion of the variables are:  

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
