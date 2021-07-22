# CourseProject
This repository contains:
	[1]  The dataset in the "UCI HAR Dataset" folder:
		Contains a set of raw data, which can be which represents data collected from the accelerometers 
		from the Samsung Galaxy S smartphone. A full description is available at the site where the data was 		obtained:
			http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
	[2]  The R script "run_analysis.R":
		This script runs an analysis on the raw data found in the dataset [1].  It takes the raw data and does 
		the following:
			1. Merges the training and the test sets to create one data set.
			2. Extracts only the measurements on the mean and standard deviation for each measurement. 
			3. Uses descriptive activity names to name the activities in the data set
			4. Appropriately labels the data set with descriptive variable names. 
			5. From the data set in step 4, creates a second, independent tidy data set with the average of 
			each variable for each activity and each subject.
	[3]  The code book "CodeBook.md":
		This contains a list of the different columns that can be found in the tidy datasets output from the 
		R script [2].  It contains a description variable (column), along with units.
		
Running the analysis through the R script:
	1. Open RStudio or some other R console.
	2. Ensure that the the packages "dplyr" and "tidyr" are installed.
		To do so you can use the following lines of code:
			install.packages("dplyr")
			install.packages("tidyr")
	3. Now you can run the following line of code
		source("run_analysis.R")
		## Note: The code may take a minute or two to run, be patient.

Output of analysis:
	After running the analysis you should have two new dataframe variables:
		1. "df": This dataframe contains the training and test sets of data, extracting only the measurements 
		on the mean and standard deviation for each measurement.  It uses descriptive activity names to name 
		the activities in the data set and appropriately labels the data set with descriptive variable names.
		2. "df_means": This dataframe is a tidy dataframe that contains the average of each variable for each 
		activity and subject.