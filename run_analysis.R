## Make sure the following packages are installed.
library(dplyr)
library(tidyr)

## Download the zip file and open in working directory.
## Now we load the data into a dataframe, combining the training and test sets.
## The training set is held in the txt file: "UCI HAR Dataset/train/X_train.txt"
## The test set is held in the txt file: "UCI HAR Dataset/test/X_test.txt"
df <- data.frame(subjectId = as.numeric(c(readLines("UCI HAR Dataset/train/subject_train.txt"), readLines("UCI HAR Dataset/test/subject_test.txt"))),
                 activityLabel = as.numeric(c(readLines("UCI HAR Dataset/train/Y_train.txt"), readLines("UCI HAR Dataset/test/Y_test.txt"))),
                 data = c(readLines("UCI HAR Dataset/train/X_train.txt"), readLines("UCI HAR Dataset/test/X_test.txt"))
                 )
## The "data" column has all the 561 features of the variables measured from
## the subject (labeled in the "subject_id" column), while he/she was doing the
## given activity (labeled in the "activity_label" column).

## We can now format the data column, such that each row is a numeric vector
## that contains the 561 measurements.
df <- mutate(df, data = lapply(lapply(strsplit(df$data, " "), as.numeric), function(x) {x[!is.na(x)]}))

## Now we need to extract only the measurements on the mean and standard
## deviation for each measurement.
## We start by reading all 561 features given in "features.txt".
features <- unlist(lapply(readLines("UCI HAR Dataset/features.txt"), function(x) {strsplit(x, " ")[[1]][2]}))
## We can find all variables we want using grep function to grab all the features
## that have "mean()" or "std()" function names in them.
feature_indices <- sort(c(grep("mean[^Freq]()", features), grep("std()", features)))
feature_names <- features[feature_indices]
feature_names <- unlist(lapply(feature_names,
                               function(x) {
                                 x <- sub("mean\\(\\)", "Mean", x)
                                 x <- sub("std\\(\\)", "StandardDevation", x)
                                 x <- sub("^t", "time", x)
                                 x <- sub("^f", "frequency", x)
                                 x <- sub("Acc", "Acceleration", x)
                                 x <- sub("Gyro", "AngularVelocity", x)
                                 x <- sub("Mag", "Magnitude", x)
                                 x <- sub("BodyBody", "Body", x)
                                 x <- sub("X$", "Xaxis", x)
                                 x <- sub("Y$", "Yaxis", x)
                                 x <- sub("Z$", "Zaxis", x)
                                 x <- gsub("-", "", x)
                                 }
                               )
                        )

## Now we are ready to start extracting the desired measurements.
## First we update each row of the data column such that only the desired
## measurements are present.
df <- mutate(df, data = lapply(df$data, function(x) {x[feature_indices]}))

## Now we can spread the dataframe, such that, each feature in a data vector has
## its own column with a proper and descriptive title.
df$index <- 1:nrow(df)
df <- df %>%
      unnest(data) %>%
      group_by(index) %>%
      mutate(key = row_number()) %>%
      spread(key, data) %>%
      ungroup() %>%
      select(-index) %>%
      arrange(subjectId, activityLabel)
names(df)[3:length(names(df))] <- feature_names

## We also need to make the activity names more descriptive.
## The activity names are written in the file:
## "UCI HAR Dataset/activity_labels.txt".
## We can extract them by doing the following.
activities <- unlist(lapply(readLines("UCI HAR Dataset/activity_labels.txt"), function(x) {tolower(strsplit(x, " ")[[1]][2])}))
## Now we can update the activityLabel column of the dataset using the vector
## created in the previous line of code.
for (i in 1:length(df$activityLabel)) {
    df$activityLabel[i] <- activities[as.numeric(df$activityLabel[i])]
}

## Now that we are finished with our first tidy dataset, we can use it to create
## our second one.  We want a dataset that takes the average of each column in
## first dataset, with respect to each subject and activity.
## To do so we first must group the original tidy dataset by subjectId and then
## activity label.
df <- group_by(df, subjectId, activityLabel)
## Now we can just use the summarize_all function in the dplyr library to
## summarize the means of all data columns based on their groups created in the
## previous line of code (I also sorted them to make the data more appealing).
df_means <- arrange(summarise_all(df, mean), subjectId, activityLabel)
## Since there are 30 subjects and 6 activities, we expect the df_means
## dataframe to have 30 x 6 = 180 rows.

## Finally we can remove all unwanted values/variables.
rm(feature_indices)
rm(feature_names)
rm(features)
rm(i)
rm(activities)
