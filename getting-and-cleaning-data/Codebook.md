## Codebook

# Human Activity Recognition Using Smartphones Dataset

The original data has been modified as follows:

The files `train.txt` and `test.txt` were combined. These were combined with the activity labels from `activity_labels.txt` and subject information from `subject_train.txt` and `subject_test.txt`. Only the measurements on the mean and standard deviation for each measurement were retained. The activity names were modified to be more descriptive by utilising and cleaning the feature names provided in `features.txt`. The resulting dataset is named `tidy_data.txt`.

The variable 'subject' denotes the identity of the subject from whom the readings were taken.

The variable 'activity' denotes the activity the subject was performing when the reading was taken.

The following signal readings are included in the dataset:

tBodyAcc
tGravityAcc
tBodyAccJerk
tBodyGyro
tBodyGyroJerk
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc
fBodyAccJerk
fBodyGyro
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

'X', 'Y' and 'Z' are used to denote signals in the X, Y and Z directions.

The modified dataset above was used to create a second data set containing the average of each variable for each activity and each subject. This dataset is named `tidy_average_data.txt`.

The dataset includes the following files:

- 'README.md'

- 'run_analysis.R': The script used to create the output files

- 'tidy_data.txt'

- 'tidy_average_data.txt'
