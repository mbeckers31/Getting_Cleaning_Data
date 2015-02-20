##########################################################################
#### This script is called run_analysis.R                             ####
####                                                                  ####
#### It was created by Mischa Beckers                                 ####
#### on February 17th, 2015                                           ####
#### for the Coursera course Getting and Cleaning Data (getdata-011)  ####
####                                                                  ####
##########################################################################

library(plyr)

#### STEP 1: MERGING DATA ################################################
# First read all relevant files for train data
# Then bind these into one train data table
# Do the same for all relevant test data
# Then bind the train and test data tables into one

xtr <- read.table("./Dataset/train/X_train.txt")
ytr <- read.table("./Dataset/train/Y_train.txt")
str <- read.table("./Dataset/train/subject_train.txt")
train <- cbind(str, ytr, xtr)

xte <- read.table("./Dataset/test/X_test.txt")
yte <- read.table("./Dataset/test/Y_test.txt")
ste <- read.table("./Dataset/test/subject_test.txt")
test <- cbind(ste, yte, xte)

total <- rbind(train, test)

#### STEP 2: EXTRACT RELEVANT DATA #######################################
# Keep only columns for measurements on the mean and standard deviation. 
# First read (the names of) features form the relevant file.
# Then assign these names to the (total) data (don't forget to include 
# column names for subjects and activities which were also added in STEP 1)
# After that only keep the columns that have names on mean (mean) and 
# standard deviation (std). 

features <- read.table("./Dataset/features.txt", stringsAsFactors = FALSE)[, 2]
names(total) <- c("subject", "activity", features)
relevant_names <- grep("-(mean|std)\\(\\)", names(total))
reduced_total <- total[, c(1, 2, relevant_names)]

#### STEP 3. DESCRIBE ACTIVITIES #########################################
# Descriptive activity names should be used for activities in the data set.
# Hence, the activities, now indicated by numbers 1 to 6 should be given 
# their actual name instead of the number.
# First read (the names of) activities form the relevant file.
# Then assign these names to the data.

activities <- read.table("./Dataset/activity_labels.txt")
reduced_total$activity <- factor(reduced_total$activity, labels=activities[, 2])

#### STEP 4. DETERMINE AVERAGES ##########################################
# From the data set in the previous step, a second, independent tidy data 
# set is created with the average of each variable for each activity and 
# each subject. 
# In the assignment it was mentioned that first descriptibe names for 
# features (colukn names) should be created. I do that in STEP 5.,
# which is more efficient, in my opinion.

tidy_dataset <- ddply(reduced_total, .(subject, activity), numcolwise(mean))

#### STEP 5. CREATE DESCRIPTIVE NAMES ####################################
# To create descriptive names I would have to write the full names of 
# "Acc", "Mag", etc. That would lead to incredibly long names. Therefore,
# I decided to clean up the column names by 1) adding "Average" 2) remove
# "()" and "-" 3) do some other formatting

names(tidy_dataset) <- gsub("^t", "AverageT", names(tidy_dataset))
names(tidy_dataset) <- gsub("^f", "AverageF", names(tidy_dataset))
names(tidy_dataset) <- gsub("-mean\\(\\)", "Mean", names(tidy_dataset))
names(tidy_dataset) <- gsub("-std\\(\\)", "Std", names(tidy_dataset))
names(tidy_dataset) <- gsub("-", "", names(tidy_dataset))

#### STEP 6. WRITE NEW TIDY DATA SET TO FILE #############################

write.table(tidy_dataset, "./Dataset/tidy_dataset.txt", row.name=FALSE)