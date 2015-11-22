Notes on the original/raw data
------------------------------

The x_train file is a 7352 lines* 561 columns files, corresponding to the 561 features/measurements made on the 21 training set subjects.

The y_train file is a 7352 lines*1 column file giving the activities the subjects were having (eg walking, laying etc) while the measurements were made. There are 6 possible activities.

The y_train file is a 7352 lines*1 column file giving the Id of the subject (a number between 1 and 30) for which measurements are made.

The test files are similar except that there are 2947 lines instead of 7352 (corresponding to the measurements made on the 9 test subjects).


Description of the variables in the "TidyData.txt" file
-------------------------------------------------------

The "TidyData.txt" file is a 181 lines*81 columns data frame.

The first line gives the names of the columns/variables.
The next 180 lines correspond to the 180 subjects/activities combinations (30 subjects * 6 possible activities).

The first column of the data frame gives the subject's Id while the second gives his activity  while the measurements were made.
The next 79 columns give the mean over each subject/activity combination of the 79 variables that are means or standard deviations of measurements. That is to say, among the 561 original variables, 79 are means or standard deviations of other variables, and only those are kept in the TidyData file. These 79 variables were selected on the basis that their names as given in the "features.txt" file included "mean()" or "std()".


