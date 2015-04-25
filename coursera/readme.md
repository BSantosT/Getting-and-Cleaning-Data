## README ##

The run_analysis.R script - HOW TO

Assuming that user already downloaded and saved the .zip file contains the data in the working directory.
The run_analysis.R is properly commented for better understanding of each step of the script.
Bellow, some instructions on how to use the script are mentioned.

Once you run the script,several pop-up windows will open. The user has to select the text files, ***saved previously on a working directory***, in the following order:

 - X_test.txt 
 - y_test.txt 
 - subject_test.txt 
 - X_train.txt 
 - y_train.txt
 - subject_train.txt 
 - features.txt 
 - activity_labels.txt

How the script works:

 1. Creates Test group data frame
 2. Creates Train group data frame
 3. Merges the data frames created in step 1 and 2 into a single data frame
 4. columns 1 and 2 (subject and activities, respectively) are reordered in ascending order, while preserving corresponding order of other columns (function *arrange* from *dplyr package*)
 5. Each column is renamed; new names should not have any special character or spaces.
 **Example of the first five columns:**
    "subject"       "activities"    "tbodyaccmeanx" "tbodyaccmeany" "tbodyaccmeanz"
 6.  Gives descriptive activity names to the activities column in the data set
 7.  Calculates the mean of each variable for each subject and each activity:
	 7.1.Subject 1 > Activity 1 > mean of all 79 variables
	 7.2. Subject 1 > Activity 2 > mean of all 79 variables