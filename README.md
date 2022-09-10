# data_cleaning_project
Repository containing the code for the "Getting and Cleaning Data" Course Project.

## run_analysis.R
This represents the R script to be used to clean and tidy the Samsung dataset.
Before starting the script, it is important to set the correct working directory through the setwd() function. 
This folder should contain the samsung dataset to be cleaned.

The script performs the following steps, in order:
1. Read from file the train and test set data.
2. Read from file the column containing the subject ids of train and test sets.
3. Merge train and test sets to get a single dataset.
4. Read from file and assign names to the columns in the dataset.
5. Extract the measurements of the mean and standard deviation for each measurement
6. Read from file the activities corresponding to each record in the dataset
7. Assign explanatory names to these activities
8. Modify the column names of the dataset so that they are clear and explanatory
9. Creates a final, tidy dataset with the average of each variable for each activity and each subject

**This last step produces the dataset required by the project assignment.**
