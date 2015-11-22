# Getting-and-Cleaning-Data-Course-Project
###This is the course project for the Coursera course: Getting and Cleaning Data

###Instructions for the project:
*You should create one R script called run_analysis.R that does the following. 
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names. 
*From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#How to run the script:

*Make sure the files from the UCI data set (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
are in you working directory and that you have the dyplr library installed

*Run the script

*The out put will be the file titled tidy_data.txt saved in your working directory


#Overview of how the script works:

*loads the data
*combines the feature data from the training and test set
*assigns descriptive labels to the columns of the x data
*combines the Y data from the training and test set
*assigns replaces the activiy index with the actual activity name in the Y data
*combines the subject data from the training and test set
*subsets the feature data to contain only the columns with mean() or std() in thier name
*cbinds subject activity and feature data
*groups the data by subject first the activity second
*finds the mean of each of the factors for each activity for each subject
*writes the final data to text file: tidy_data.txt


