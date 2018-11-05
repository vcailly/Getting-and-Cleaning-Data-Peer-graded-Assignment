##########################
#    
#   0 - Download the data
#    
##########################


#Download and unzip the Dataset.zip file
#---------------------------------------


fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(.Platform$OS.type == "windows") {
  if(!file.exists(".\\data")){dir.create(".\\data")}
  download.file(fileUrl,destfile=".\\data\\Dataset.zip") 
  unzip(zipfile=".\\data\\Dataset.zip",exdir=".\\data")
} else {
  if(!file.exists("./data")){dir.create("./data")}
  download.file(fileUrl,destfile="./data/Dataset.zip")
  unzip(zipfile="./data/Dataset.zip",exdir="./data")
}

#Check the unzipped folder by listing files
#-------------------------------------------
if(.Platform$OS.type == "windows") {
  path_files <- file.path(".\\data" , "UCI HAR Dataset")
  files<-list.files(path_files, recursive=TRUE)
} else {
  path_files <- file.path("./data" , "UCI HAR Dataset")
  files<-list.files(path_files, recursive=TRUE)
}
files

#####################################################################
#    
#   1 - Merges the training and the test sets to create one data set.
#    
#####################################################################

#Read data from the files into variables
#---------------------------------------

#Activity files
#--------------
dfActivityTest  <- read.table(file.path(path_files, "test" , "y_test.txt" ),header = FALSE)
dfActivityTrain <- read.table(file.path(path_files, "train", "y_train.txt"),header = FALSE)

#Subject files
#-------------
dfSubjectTest  <- read.table(file.path(path_files, "test" , "subject_test.txt"),header = FALSE)
dfSubjectTrain <- read.table(file.path(path_files, "train", "subject_train.txt"),header = FALSE)

#Features files
#--------------
dfFeaturesTest  <- read.table(file.path(path_files, "test" , "X_test.txt" ),header = FALSE)
dfFeaturesTrain <- read.table(file.path(path_files, "train", "X_train.txt"),header = FALSE)
#--------------------------

#properties of the varibles set previously
#-----------------------------------------
str(dfActivityTest)
str(dfActivityTrain)
str(dfSubjectTest)
str(dfSubjectTrain)
str(dfFeaturesTest)
str(dfFeaturesTrain)

#Concatenate the data tables by rows
#-----------------------------------
dfSubject <- rbind(dfSubjectTrain, dfSubjectTest)
dfActivity  <- rbind(dfActivityTrain, dfActivityTest)
dfFeatures <- rbind(dfFeaturesTrain, dfFeaturesTest)

#set names to variables
#----------------------
names(dfSubject)<-c("subject")
names(dfActivity)<- c("activity")
dfFeaturesNames <- read.table(file.path(path_files, "features.txt"),head=FALSE)
names(dfFeatures)<- dfFeaturesNames$V2

#Merge columns
#-------------
dfSubjectActivity <- cbind(dfSubject, dfActivity)
df <- cbind(dfFeatures, dfSubjectActivity)

###############################################################################################
#    
#   2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
#    
###############################################################################################

#Names of Features with “mean()” or “std()”
#------------------------------------------
subdfFeaturesNames<-dfFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dfFeaturesNames$V2)]

#Subset the data frame df by seleted names of Features
#-------------------------------------------------------
selectedNames<-c(as.character(subdfFeaturesNames), "subject", "activity" )
df<-subset(df,select=selectedNames)

#Check
#-----
str(df)


##############################################################################
#    
#   3 - Uses descriptive activity names to name the activities in the data set
#    
##############################################################################

activityLabels <- read.table(file.path(path_files, "activity_labels.txt"),header = FALSE)
df$activity <- factor(df$activity, labels = as.character(activityLabels[,2]))

#Check
#-------------------------------------------------------
head(df$activity,60)


##########################################################################
#    
#   4 - Appropriately labels the data set with descriptive variable names. 
#    
##########################################################################

names(df)<-gsub("^t", "time", names(df))
names(df)<-gsub("^f", "frequency", names(df))
names(df)<-gsub("Acc", "Accelerometer", names(df))
names(df)<-gsub("Gyro", "Gyroscope", names(df))
names(df)<-gsub("Mag", "Magnitude", names(df))
names(df)<-gsub("BodyBody", "Body", names(df))

#Check
#-----
names(df)


################################################################################
#    
#   5 - From the data set in step 4, creates a second, independent tidy data set 
#       with the average of each variable for each activity and each subject. 
#    
################################################################################

df2<-aggregate(. ~subject + activity, df, mean)
df2<-df2[order(df2$subject,df2$activity),]
write.table(df2, file = "./data/tidydata.txt",row.name=FALSE)

