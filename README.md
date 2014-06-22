Read me
========================================================

The prerequisite for this analysis is to download and unzip the dataset indicated by the assignment.
The working directory contains therefore the helperFunctions.R file,the run_analysis.R script and the folder UCI HAR Dataset containing the data.
Such folder is created by unzipping the file getdata_projectfiles_UCI HAR Dataset.zip, which can be downloaded by clicking on the link
in the project assignment page.

In order to reproduce the tidy dataset available on this repository do the following:
- if you do not yet have the data.table package, install it by executing
  install.packages("data.table")
- source() the script file run_analysis.R.

The run_analysis.R script contains 5 commented command blocks, one for each instruction point of the assignment:

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

First of all we need to source() the file helperFunctions.R which contains 3 string manipulation functions, indicated further on in this document.

In block 1 the script loads 3 test files and binds then in one data frame, then does the very same for the 3 train files.
In both the test and train cases there is 1 file for the subjects wearing the Samsung mobile device, 1 file for the activity they perform and 1 file for the measures (a.k.a. features) taken during such activities. See the CodeBook for details.
Finally, the test and train data frames are binded by row in a single dataframe df.

In block 2 I subset the dataframe df by picking only those measurements containing any of "Mean", "mean", "Std", "std" anywhere in their name. This is achieved using grep and ensuring the survivor measures keep the same relative order.
The data frame is now df_tidy

In block 3 I replace the activity id with their capitalized description, through the merge function and by dropping the activity id column.
Capitalization is achieved through the function capitalizeValue (see repository).

In block 4 I make the name of each measure in df_tidy more descriptive, according to the principles stated by Jeff Leek (see comments in the code).
More specifically I've removed all (, ), - already in block 2 and split those names in components. In this block I:
- add capitalization and join all name components to improve readability with the function capitalizeVariableName (see repository).
- replace Acc with Acceleration
- replace Gyro with AngularVelocity
- replace initial t with time
- replace initial f with frequency

The last two steps are done through the appendTimeFrequency function.
If interested, you can remove the comment from the last command of block 4 to generate a file with the tidy dataset obtained so far.
It contains 10299 observations on 88 variables (86 of which numerics) and it is ~ 10MB large.

In block 5 I load the df_tidy to a data table set the subjectID and the activity as keys and the calculate the mean on all numerical columns (the internal .SD object) by subjectID and activity. Through data.table this is a very quick operation which generates a second indipendent tidy dataset, dt_tidy.

Finally I export dt_tidy to an external file, without row.names:
second_tidy_dataset.txt
it contains 180 obs (30 subjects x 6 activities) on 88 variables (86 of which numerics) and it is ~285KB.

For the name of the variables see the Codebook.

