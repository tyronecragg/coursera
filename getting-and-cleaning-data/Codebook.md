# Codebook

## Human Activity Recognition Using Smartphones Dataset

The data described in the original codebook has been modified as follows:

### tidy_data.txt

The files `train.txt` and `test.txt` were combined. The activity labels from `activity_labels.txt` and the subject information from `subject_train.txt` and `subject_test.txt` were added to the combined data. Only the measurements on the mean and standard deviation for each reading were retained. The activity names were modified to be more descriptive by utilising and cleaning the feature names provided in `features.txt`.

#### Variables

The variable **subject** denotes the identity of the subject from whom the readings were taken.

The variable **activity** denotes the activity the subject was performing when the reading was taken.

The following signal readings are included in the dataset:

**tBodyAcc**,
**tGravityAcc**,
**tBodyAccJerk**,
**tBodyGyro**,
**tBodyGyroJerk**,
**tBodyAccMag**,
**tGravityAccMag**,
**tBodyAccJerkMag**,
**tBodyGyroMag**,
**tBodyGyroJerkMag**,
**fBodyAcc**,
**fBodyAccJerk**,
**fBodyGyro**,
**fBodyAccMag**,
**fBodyAccJerkMag**,
**fBodyGyroMag**,
**fBodyGyroJerkMag**

The set of variables that were estimated from these signals are:

**mean**: Mean value
**std**: Standard deviation

The prefix **t** denotes time, and the prefix **f** indicates frequency.

The suffixes **X**, **Y** and **Z** are used to denote signals in the X, Y and Z directions.

### tidy_average_data.txt

The modified dataset above was used to create this second data set containing the average of each reading for each activity and each subject.

#### Variables

The prefix '**average** denotes that these readings have been averaged for each activity and each subject.

### Files

The dataset includes the following files:

- `README.md`

- `Codebook.md`

- scripts

	- `run_analysis.R`: The script used to create the output files

- output

	- `tidy_data.txt`
	- `tidy_average_data.txt`
