library(dplyr);
library(data.table)

#download the zip file if it doesn't exist
file_name<-"getdata_projectfiles.zip"

if(!file.exists(file_name)){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",file_name,method="curl")
}

#unzip the file if not already done
if(!file.exists("UCI HAR Dataset")){
  unzip(file_name)
}

#get feature names and train and test data
features<-read.table("UCI HAR Dataset/features.txt")
features<-t(features)[2,]

x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")

x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")

subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

#Merge the training and the test sets to create one data set and give column names to the merged data
x_data <- rbind(x_train, x_test)
y_data<-rbind(y_train,y_test)
subject_data<-rbind(subject_train, subject_test)

col_names<-c("subject",features,"activity")
merged_data<-cbind(subject_data,x_data,y_data)
colnames(merged_data)<-col_names

#Extract only the measurements on the mean and standard deviation for each measurement
mean_std_data<-merged_data[grepl("mean\\(\\)|std\\(\\)|^subject$|^activity$",col_names)]

#getdescriptive activity names and add a column to name the activities in the data set generated above
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

activity_names<-activity_labels[mean_std_data$activity,2]
mean_std_data<-cbind(mean_std_data,activity_names)

mean_std_data<-mean_std_data[ , !names(mean_std_data)== "activity"]

merged_data<-mean_std_data
#Appropriately label the data set with descriptive variable names
names(merged_data)<-gsub("^t", "time", names(merged_data))
names(merged_data)<-gsub("^f", "frequency", names(merged_data))
names(merged_data)<-gsub("Mag-", "Magnitude-", names(merged_data))
names(merged_data)<-gsub("Acc", "Acceleration", names(merged_data))
names(merged_data)<-gsub("Gyro", "Gyroscope", names(merged_data))
names(merged_data)<-gsub("iqr\\(\\)", "InterquartileRange()", names(merged_data))
names(merged_data)<-gsub("arCoeff\\(\\)", "Autorregresion_coefficients()", names(merged_data))


#Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidyData_aggregated<-
aggregate(merged_data[, 2:(ncol(merged_data)-1)], list(merged_data$subject,merged_data$activity_names), mean)
colnames(tidyData_aggregated)<-c("subject","activity_names",colnames(tidyData_aggregated[3:ncol(merged_data)]))

#Write this tidy dataset to a file
fwrite(x = tidyData_aggregated, file = "tidyData_aggregated.txt", quote = FALSE,sep="~", row.name=FALSE)

