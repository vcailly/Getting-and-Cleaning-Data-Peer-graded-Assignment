# Tidy data set description

### The tidy dataset
*  The tidy dataset is made of  180 (30 x 6) rows  and   68 columns.
*  There is one row for each subject/activity binomial.
   *  There are 30 different subjects 
   *  There are 6 different activities
*  The first column contains the Subject Id 
   *  The Subject ID is an integer between 1 and 30.
*  The second column contains the activity label. There are 6 types of activity  as listed below

   1 - WALKING
   
   2 - WALKING_UPSTAIRS
   
   3 - SITTING
   
   5 - STANDING
   
   6 - LAYING
   
*  The 66 other columns contain either the mean value or the standard deviation of a measurement.
*  The tidy dataset is sorted by subject and activity factor levels

### Types of the 68 variables.

| variable name                                 | Type               |
| ----------------------------------------------| -------------------|
| subject                                       | integer            |
| activity                                      | Factor w/ 6 levels |
| timeBodyAccelerometer-mean()-X                | numeric            |
| timeBodyAccelerometer-mean()-Y                | numeric            |
| timeBodyAccelerometer-mean()-Z                | numeric            |
| timeBodyAccelerometer-std()-X                 | numeric            |
| timeBodyAccelerometer-std()-Y                 | numeric            |
| timeBodyAccelerometer-std()-Z                 | numeric            |
| timeGravityAccelerometer-mean()-X             | numeric            |
| timeGravityAccelerometer-mean()-Y             | numeric            |
| timeGravityAccelerometer-mean()-Z             | numeric            |
| timeGravityAccelerometer-std()-X              | numeric            |
| timeGravityAccelerometer-std()-Y              | numeric            |
| timeGravityAccelerometer-std()-Z              | numeric            |
| timeBodyAccelerometerJerk-mean()-X            | numeric            |
| timeBodyAccelerometerJerk-mean()-Y            | numeric            |
| timeBodyAccelerometerJerk-mean()-Z            | numeric            |
| timeBodyAccelerometerJerk-std()-X             | numeric            |
| timeBodyAccelerometerJerk-std()-Y             | numeric            |
| timeBodyAccelerometerJerk-std()-Z             | numeric            |
| timeBodyGyroscope-mean()-X                    | numeric            |
| timeBodyGyroscope-mean()-Y                    | numeric            |
| timeBodyGyroscope-mean()-Z                    | numeric            |
| timeBodyGyroscope-std()-X                     | numeric            |
| timeBodyGyroscope-std()-Y                     | numeric            |
| timeBodyGyroscope-std()-Z                     | numeric            |
| timeBodyGyroscopeJerk-mean()-X                | numeric            |
| timeBodyGyroscopeJerk-mean()-Y                | numeric            |
| timeBodyGyroscopeJerk-mean()-Z                | numeric            |
| timeBodyGyroscopeJerk-std()-X                 | numeric            |
| timeBodyGyroscopeJerk-std()-Y                 | numeric            |
| timeBodyGyroscopeJerk-std()-Z                 | numeric            |
| timeBodyAccelerometerMagnitude-mean()         | numeric            |
| timeBodyAccelerometerMagnitude-std()          | numeric            |
| timeGravityAccelerometerMagnitude-mean()      | numeric            |
| timeGravityAccelerometerMagnitude-std()       | numeric            |
| timeBodyAccelerometerJerkMagnitude-mean()     | numeric            |
| timeBodyAccelerometerJerkMagnitude-std()      | numeric            |
| timeBodyGyroscopeMagnitude-mean()             | numeric            |
| timeBodyGyroscopeMagnitude-std()              | numeric            |
| timeBodyGyroscopeJerkMagnitude-mean()         | numeric            |
| timeBodyGyroscopeJerkMagnitude-std()          | numeric            |
| frequencyBodyAccelerometer-mean()-X           | numeric            |
| frequencyBodyAccelerometer-mean()-Y           | numeric            |
| frequencyBodyAccelerometer-mean()-Z           | numeric            |
| frequencyBodyAccelerometer-std()-X            | numeric            |
| frequencyBodyAccelerometer-std()-Y            | numeric            |
| frequencyBodyAccelerometer-std()-Z            | numeric            |
| frequencyBodyAccelerometerJerk-mean()-X       | numeric            |
| frequencyBodyAccelerometerJerk-mean()-Y       | numeric            |
| frequencyBodyAccelerometerJerk-mean()-Z       | numeric            |
| frequencyBodyAccelerometerJerk-std()-X        | numeric            |
| frequencyBodyAccelerometerJerk-std()-Y        | numeric            |
| frequencyBodyAccelerometerJerk-std()-Z        | numeric            |
| frequencyBodyGyroscope-mean()-X               | numeric            |
| frequencyBodyGyroscope-mean()-Y               | numeric            |
| frequencyBodyGyroscope-mean()-Z               | numeric            |
| frequencyBodyGyroscope-std()-X                | numeric            |
| frequencyBodyGyroscope-std()-Y                | numeric            |
| frequencyBodyGyroscope-std()-Z                | numeric            |
| frequencyBodyAccelerometerMagnitude-mean()    | numeric            |
| frequencyBodyAccelerometerMagnitude-std()     | numeric            |
| frequencyBodyAccelerometerJerkMagnitude-mean()| numeric            |
| frequencyBodyAccelerometerJerkMagnitude-std() | numeric            |
| frequencyBodyGyroscopeMagnitude-mean()        | numeric            |
| frequencyBodyGyroscopeMagnitude-std()         | numeric            |
| frequencyBodyGyroscopeJerkMagnitude-mean()    | numeric            |
| frequencyBodyGyroscopeJerkMagnitude-std()     | numeric            |
 

