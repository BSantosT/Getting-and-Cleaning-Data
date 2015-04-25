PART 1
=====
Information on features_info.txt

**Feature Selection**

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

The complete list of variables of each feature vector is available in 'features.txt'

----------

PART 2
------
After step 8 described in README file, we have 81 variables

Subject - represents one of 30 people submitted either to Test or Train data set.

Activity - list of activities throughout the data sets were collected;
The remaining 79 variables are here divided in two groups: mean and std. In each groups, they are grouped by -xyz- (meaning that there are 3 different variables, one for x, one for y and for z) for the safe of visualization in this file.

Each of them (of the 79) represent the average value for each subject and each activity, as the example on the README file shows.

 

 - Mean group:
  
 2. tbodyaccmean-xyz-           
 3. gravityaccmean-xyz-
 4. tgravityaccmean-xyz-       
 5. tbodyaccjerkmean-xyz-       
 6. tbodygyromean-xyz-              
 7. tbodygyrojerkmean-xyz-     
 8. tbodyaccmagmean            
 9. tgravityaccmagmean
 10. tbodyaccjerkmagmean
 11. tbodygyromagmean         
 12. tbodygyrojerkmagmean        
 13. fbodyaccmean-xyz-                
 14. fbodyaccmeanfeq-xyz-            
 15. fbodyaccjerkmean-xyx-
 16. fbodyaccjerkmeanfreq-xyz-   
 17. fbodygyromean-xyz-         
 18. fbodygyromeanfreq-xyz-     
 19. fbodyaccmagmean             
 20. fbodyaccmagmeanfreq       
 21. fbodybodyaccjerkmagmean      
 22. fbodybodyaccjerkmagmeanfreq  
 23. fbodybodygyromagmean
 24. fbodybodygyromagmeanfreq
 25. fbodybodygyrojerkmagmean     
 26. fbodybodygyrojerkmagmeanfreq

 - Std group:

 2. tbodyaccstd-xyz- 
 3. tgravityaccstd-xyz- 
 4. tbodyaccjerkstd-xyz-
 5. tbodygyrostd-xyz-            
 6. tbodygyrojerkstd-xyz-
 7. tbodyaccmagstd
 8. tgravityaccmagstd
 9. tbodyaccjerkmagstd
 10. tbodygyromagstd
 11. tbodygyrojerkmagstd 
 12. fbodyaccstd-xyz-     
 12. fbodyaccjerkstd-xyz-              
 13. fbodygyrostd-xyz-                
 14. fbodyaccmagstd             
 15. fbodybodyaccjerkmagstd
 16. fbodybodygyromagstd      
 17. fbodybodygyrojerkmagstd

> Written with [StackEdit](https://stackedit.io/).
