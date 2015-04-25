## README ##

The run_analysis.R script - HOW TO

Assuming that user already downloaded and saved the .zip file, which contains the data in the working directory.
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

 1. Creates Test group data frame: dim = [2947, 563]
 2. Creates Train group data frame: dim = [7352, 563]
 3. Merges the data frames created in step 1 and 2 into a single data frame: dim = [10299, 563]
 4. columns 1 and 2 (subject and activities, respectively) are reordered in ascending order, while preserving corresponding order of other columns (function *arrange* from *dplyr package*)
 5. Extract columns that have mean() or std() in their name only: dim = [10299, 81]
 5. Each column is renamed; new names should not have any special character or spaces.
 **Example of the first five columns:**
    "subject"       "activities"    "tbodyaccmeanx" "tbodyaccmeany" "tbodyaccmeanz"
 6.  Gives descriptive activity names to the activities column in the data set
 7.  Calculates the mean of each variable for each subject and each activity. The results are saved in a new tidy data frame: dim = [180, 81]
***Example:***

>     Subject 1 > Activity 1 > mean of all 79 variables
>     Subject 1 > Activity 2 > mean of all 79 variables
>     ...
>     subject 1 > Activity 6 > mean of all 79 variables
>     ....
>     subject 30 > Activity 1 > mean of all 79 variables
>     ...
>     subject 30 > Activity 6 > mean of all 79 variables

For more detailed information about the variables, please check the codebook file.   
