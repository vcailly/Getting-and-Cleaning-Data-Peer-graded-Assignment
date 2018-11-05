# Getting and Cleaning Data: Peer graded Assignment

This repo contains the code for the Peer-graded Assignment for week 4 of  the Getting and Cleaning Data Coursera course.

### Installation and Execution
1.  clone or download this repository
2.  Copy the ```run_analysis.R``` script into your R working directory.
3.  Execute  the ```run_analysis.R``` script to generate the tidy data file.


### Code explaination

The code performs the tasks described in the [instructions](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project) of this assignment :
1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

*Notice:* 
*  Before to execute the 5 tasks described above, the ```run_analysis.R``` script downloads and unzip the input data
*  The ```run_analysis.R``` script identifies the underlying operating system  in order to use the right directory separator ("\" for windows, "/" for other systems)
*  The input data is stored into ```<<R working directory>>\data\UCI HAR Dataset\``` (windows) or ```<<R working directory>>/data/UCI HAR Dataset/``` (other systems)
*  The ouput file, ```tidydata.txt```, is created into  ```<<R working directory>>\data\```  (windows) or ```<<R working directory>>/data/``` (other systems)
*  The ```run_analysis.R``` script has been tested on a "Windows 10" system and a  "Linux centos7" system 


### Tidy dataset created by the R script
*  The created dataset contains 180 (6 x 30) rows  
   *  6 rows per subject (1 row for each of the following activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
   *  30 different subjects numbered from 1 to 30 
*  Rows are sorted by Subject and activity factor levels.