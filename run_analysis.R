library(dplyr)


#reading in the tables perserving the naming conventions
X_test <- read.table("test/X_test.txt", header = F, stringsAsFactors = F)
Y_test <- read.table("test/Y_test.txt", header = F, stringsAsFactors = F)
X_train <- read.table("train/X_train.txt", header = F, stringsAsFactors = F)
Y_train <- read.table("train/Y_train.txt", header = F, stringsAsFactors = F)
subject_train <-read.table("train/subject_train.txt", header = F)
subject_test<-read.table("test/subject_test.txt", header = F)

#reading in the feature labels
features <-read.table("features.txt")

#replacing the column numbers with their actual names to give the column a descriptive variable name
names(X_test)<-features[,2]
names(X_train)<-features[,2]

#combining the X data
X_data <- rbind(X_test,X_train)

#combing the Y data
Y_unlabeled <- rbind(Y_test,Y_train)

#reading in the activity labels
activity_labels <- read.table("activity_labels.txt")

#replacing activity numbers with the actual labels
Y_data <- activity_labels[Y_unlabeled[,1],2]

#combining the subject indicies
subjects <- rbind(subject_test,subject_train)

#searching for all features with the string mean() or std()
means <- grep("mean\\(\\)",features[,2])
stds <- grep("std\\(\\)",features[,2])

#subsetting the X data so that it only has fields which are mean() or std() variables
extracted_X_data <- X_data[,c(means,stds)]

#combining all the data to make the organized data set
cleaned_up_data <- cbind(subjects, Y_data, extracted_X_data)

#adding names to the first 2 columns
names(cleaned_up_data)[1] <- "SubjectID"
names(cleaned_up_data)[2] <- "Activity"

#grouping the data by SubjectID then Activity
ex4_data <- group_by(cleaned_up_data, SubjectID, Activity)

#finding the means of each of the variables for each subject and activity
tidy_data<-summarize_each(ex4_data,funs(mean))

#changing the names of the tidy_data variables to reflect that they are means of the mean() and std() variables from the raw data set
renaming_helper <- rep("mean of ", 66)
new_names<- paste0(x,names(tidy_data)[3:68])
names(tidy_data)[3:68]<-new_names

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
