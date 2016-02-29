## Column 1- activity 
In this research, below six activities were measured. 

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

## Column 2- subjects 
There were 30 subjects, indicated with number from 1 to 30. 

### The features selected for this database 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

### Transformation steps from the original data
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity(six activities in total) and each subject(subject 1 through 30). 

## Column 3 - 68 - the list of variables 
The complete list of variables of each feature vector is as following: 
                   
"avg of tBodyAcc-mean()-X"           
"avg of tBodyAcc-mean()-Y"          
"avg of tBodyAcc-mean()-Z"           
"avg of tBodyAcc-std()-X"           
"avg of tBodyAcc-std()-Y"            
"avg of tBodyAcc-std()-Z"           
"avg of tGravityAcc-mean()-X"        
"avg of tGravityAcc-mean()-Y"       
"avg of tGravityAcc-mean()-Z"        
"avg of tGravityAcc-std()-X"        
"avg of tGravityAcc-std()-Y"         
"avg of tGravityAcc-std()-Z"        
"avg of tBodyAccJerk-mean()-X"       
"avg of tBodyAccJerk-mean()-Y"      
"avg of tBodyAccJerk-mean()-Z"       
"avg of tBodyAccJerk-std()-X"       
"avg of tBodyAccJerk-std()-Y"        
"avg of tBodyAccJerk-std()-Z"       
"avg of tBodyGyro-mean()-X"          
"avg of tBodyGyro-mean()-Y"         
"avg of tBodyGyro-mean()-Z"          
"avg of tBodyGyro-std()-X"          
"avg of tBodyGyro-std()-Y"           
"avg of tBodyGyro-std()-Z"          
"avg of tBodyGyroJerk-mean()-X"      
"avg of tBodyGyroJerk-mean()-Y"     
"avg of tBodyGyroJerk-mean()-Z"      
"avg of tBodyGyroJerk-std()-X"      
"avg of tBodyGyroJerk-std()-Y"       
"avg of tBodyGyroJerk-std()-Z"      
"avg of tBodyAccMag-mean()"          
"avg of tBodyAccMag-std()"          
"avg of tGravityAccMag-mean()"       
"avg of tGravityAccMag-std()"       
"avg of tBodyAccJerkMag-mean()"      
"avg of tBodyAccJerkMag-std()"      
"avg of tBodyGyroMag-mean()"         
"avg of tBodyGyroMag-std()"         
"avg of tBodyGyroJerkMag-mean()"     
"avg of tBodyGyroJerkMag-std()"     
"avg of fBodyAcc-mean()-X"           
"avg of fBodyAcc-mean()-Y"          
"avg of fBodyAcc-mean()-Z"           
"avg of fBodyAcc-std()-X"           
"avg of fBodyAcc-std()-Y"            
"avg of fBodyAcc-std()-Z"           
"avg of fBodyAccJerk-mean()-X"       
"avg of fBodyAccJerk-mean()-Y"      
"avg of fBodyAccJerk-mean()-Z"       
"avg of fBodyAccJerk-std()-X"       
"avg of fBodyAccJerk-std()-Y"        
"avg of fBodyAccJerk-std()-Z"       
"avg of fBodyGyro-mean()-X"          
"avg of fBodyGyro-mean()-Y"         
"avg of fBodyGyro-mean()-Z"          
"avg of fBodyGyro-std()-X"          
"avg of fBodyGyro-std()-Y"           
"avg of fBodyGyro-std()-Z"          
"avg of fBodyAccMag-mean()"          
"avg of fBodyAccMag-std()"          
"avg of fBodyBodyAccJerkMag-mean()"  
"avg of fBodyBodyAccJerkMag-std()"  
"avg of fBodyBodyGyroMag-mean()"     
"avg of fBodyBodyGyroMag-std()"     
"avg of fBodyBodyGyroJerkMag-mean()" 
"avg of fBodyBodyGyroJerkMag-std()" 