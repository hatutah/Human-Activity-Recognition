Getting and Cleaning Data - Human Activity Recognition
=========================== 
This project retrieves and transforms UCI's [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) data in accordance with a class assignment for [Getting and Cleaning Data](http://www.coursera.org/course/getdata).

### Download and Transformation script

The R script [run_analysis.R](run_analysis.R) performs the following
	
- Downloads and Unzips the [data](UCI HAR Dataset/) (*large file) from the course CDN if not found locally
- Loads feature names into memory
- Loads activity labels into memory
- Loads observations and subject IDs into memory
- Filters by mean or standard deviation features
- Merges test and training data sets
- Merges ID (subject and activity) and feature variables into one table
- Applies descriptive names feature variables
- Applies descriptive names to the activity ID
- Creates a new table indexed by subject with means for each activity
- Writes the summary table to disk as [har-tidy-means.txt](har-tidy-means.txt)

### Variable Description

Verbose descriptions of all variables are included in the dataset [README](UCI HAR Dataset/README.txt) Here is a breakdown of all variables included in the final summary.

- Activity Values

	- 1 WALKING
	- 2 WALKING_UPSTAIRS
	- 3 WALKING_DOWNSTAIRS
	- 4 SITTING
	- 5 STANDING
	- 6 LAYING

- Features Labels (after filtering)

	- tBodyAcc.mean...X
	- tBodyAcc.mean...Y
	- tBodyAcc.mean...Z
	- tBodyAcc.std...X
	- tBodyAcc.std...Y
	- tBodyAcc.std...Z
	- tGravityAcc.mean...X
	- tGravityAcc.mean...Y
	- tGravityAcc.mean...Z
	- tGravityAcc.std...X
	- tGravityAcc.std...Y
	- tGravityAcc.std...Z
	- tBodyAccJerk.mean...X
	- tBodyAccJerk.mean...Y
	- tBodyAccJerk.mean...Z
	- tBodyAccJerk.std...X
	- tBodyAccJerk.std...Y
	- tBodyAccJerk.std...Z
	- tBodyGyro.mean...X
	- tBodyGyro.mean...Y
	- tBodyGyro.mean...Z
	- tBodyGyro.std...X
	- tBodyGyro.std...Y
	- tBodyGyro.std...Z
	- tBodyGyroJerk.mean...X
	- tBodyGyroJerk.mean...Y
	- tBodyGyroJerk.mean...Z
	- tBodyGyroJerk.std...X
	- tBodyGyroJerk.std...Y
	- tBodyGyroJerk.std...Z
	- tBodyAccMag.mean..
	- tBodyAccMag.std..
	- tGravityAccMag.mean..
	- tGravityAccMag.std..
	- tBodyAccJerkMag.mean..
	- tBodyAccJerkMag.std..
	- tBodyGyroMag.mean..
	- tBodyGyroMag.std..
	- tBodyGyroJerkMag.mean..
	- tBodyGyroJerkMag.std..
	- fBodyAcc.mean...X
	- fBodyAcc.mean...Y
	- fBodyAcc.mean...Z
	- fBodyAcc.std...X
	- fBodyAcc.std...Y
	- fBodyAcc.std...Z
	- fBodyAccJerk.mean...X
	- fBodyAccJerk.mean...Y
	- fBodyAccJerk.mean...Z
	- fBodyAccJerk.std...X
	- fBodyAccJerk.std...Y
	- fBodyAccJerk.std...Z
	- fBodyGyro.mean...X
	- fBodyGyro.mean...Y
	- fBodyGyro.mean...Z
	- fBodyGyro.std...X
	- fBodyGyro.std...Y
	- fBodyGyro.std...Z
	- fBodyAccMag.mean..
	- fBodyAccMag.std..
	- fBodyBodyAccJerkMag.mean..
	- fBodyBodyAccJerkMag.std..
	- fBodyBodyGyroMag.mean..
	- fBodyBodyGyroMag.std..
	- fBodyBodyGyroJerkMag.mean..
	- fBodyBodyGyroJerkMag.std..



