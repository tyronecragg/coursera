## Coursera Project - Getting and Cleaning Data

### About
This project utilises the "Human Activity Recognition Using Smartphones Data Set", collected from accelerometers on the Samsung Galaxy S smartphone.

### Data
The data used in this project can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). A full description of the data is located [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Files
The data above should be downloaded and unzipped into a folder named `data` within the working directory.
The script file, `run_analysis.R`, should be placed in a folder named `scripts` within the working directory.

### Execution
The script file, `run_analysis.R`, reads in the data detailed above and completes the following 5 main tasks:
- Merge the training and the test sets to create one data set
- Extract only the measurements on the mean and standard deviation for each measurement
- Use descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive variable names
- Create a second, independent tidy data set with the average of each variable for each activity and each subject

### Output
Once the script has been executed, the tidied data files will be located at `output/tidy_data.txt` and `output/tidy_average_data.txt`.

### Codebook
The codebook describing the variables in the tidied data files is located at `Codebook.md`.
