## The run_analysis.R script

This script can be run as is (without arguments etc.).

It requires that 
- the plyr package is installed
- there is a Dataset directory in your working directory, containing all subdirectories and files 

The script is divided into six steps, as follows.

* STEP 1: MERGING DATA. All relevant files for train data are read and bound into one train data table. The samen happens with the test data. Then the train and test data tables are bound into one total data table.
* STEP 2: EXTRACT RELEVANT DATA. The total data table contains a lot of columns but only those with measurements on the mean and standard deviation should be kept.  
* STEP 3. DESCRIBE ACTIVITIES. The data table contains one column for "activities". Descriptive activity names should be used for these activities. Hence, the activities, now indicated by numbers 1 to 6 are given their actual name instead of the number.
* STEP 4. DETERMINE AVERAGES. From the data set in the previous step, a second, independent tidy data set is created with the average of each variable for each activity and each subject. 
* STEP 5. CREATE DESCRIPTIVE NAMES. Column names in the data table now contain some unnecessary characters / formatting and not quite self-explaining. The first problem is solverd by 'cleaning up' column names. The second problem is also partly solved by adding some more meaningful information to column names.
*STEP 6. WRITE NEW TIDY DATA SET TO FILE. The resulting data table is writte to a txt file in the working directory.