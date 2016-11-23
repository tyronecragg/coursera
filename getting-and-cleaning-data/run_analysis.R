#Coursera - Data Science - Getting and Cleaning Data
#Course Project

#Author: Tyrone Cragg

#Date: November 2016

#Load required packages
library(dplyr)

#Read in training data
train = read.table("data/train/X_train.txt")

#Read in testing data
test = read.table("data/test/X_test.txt")

#Read in features
features = read.table("data/features.txt")

#Extract feature variable
features = features$V2

#Identify mean and standard deviation features
keep = grepl("mean\\(\\)|std\\(\\)", features)

#Make features valid R variable names
features = make.names(features, unique=T)

#Replace one or more "." with "_" in features
features = gsub("[\\.]+", "_", features)

#Replace trailing "_" with "" in features
features = gsub("_$", "", features)

#Place "_" between lowercase letter followed by uppercase letter
features = gsub("([a-z])([A-Z])", "\\1_\\2", features)

#Convert all features to lowercase
features = tolower(features)

#Label the data set with descriptive variable names
names(train) = features
names(test) = features

#Extract only the measurements on the mean and standard deviation for each measurement
train = train[, keep]
test = test[, keep]

#Read in labels
train_labels = read.table("data/train/y_train.txt")
test_labels = read.table("data/test/y_test.txt")

#Set label variable name
names(train_labels) = "label"
names(test_labels) = "label"

#Add label to train and test
train = cbind(train, train_labels)
test = cbind(test, test_labels)

#Read in subjects
train_subjects = read.table("data/train/subject_train.txt")
test_subjects = read.table("data/test/subject_test.txt")

#Set subject variable name
names(train_subjects) = "subject_id"
names(test_subjects) = "subject_id"

#Add subject to train and test
train = cbind(train, train_subjects)
test = cbind(test, test_subjects)

#Merge the training and the test sets to create one data set.
data = rbind(train, test)

#Read in activity labels
activity_labels = read.table("data/activity_labels.txt")

#Rename activity label variables
names(activity_labels) = c("label", "activity")

#Convert activity to lowercase
activity_labels$activity = tolower(activity_labels$activity)

#Use descriptive activity names to name the activities in the data set
data = merge(data, activity_labels, by="label", all.x=T, all.y=F)

#Remove label
data$label = NULL

#From the data set, create a second, independent tidy data set with the average
#of each variable for each activity and each subject.
average_data = data %>%
  group_by(subject_id, activity) %>%
  summarise_each(funs(mean))

#Rename all summarised columns
names(average_data)[3:ncol(average_data)] = paste("average", names(average_data)[3:ncol(average_data)], sep="_")

#Write data set
write.table(average_data, "tidy_data.txt", row.name=F)

