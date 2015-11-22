{

	# load the "dplyr" package

	library(dplyr)

	# Reads the subject_train, y_train and x_train files into R objects

	SubjectTrain <- read.table("./train/subject_train.txt", header=FALSE)
	yTrain <- read.table("./train/y_train.txt", header=FALSE)
	xTrain <- read.table("./train/X_train.txt", header=FALSE)

	# column binds the 3 previous objects into a training set  	including all variables

	TrainAllVars <- cbind(SubjectTrain, yTrain,xTrain)

	# Reads the subject_test, y_test and x_tes files into R objects

	SubjectTest <- read.table("./test/subject_test.txt", header=FALSE)
	yTest <- read.table("./test/y_test.txt", header=FALSE)
	xTest <- read.table("./test/X_test.txt", header=FALSE)

	# column binds the 3 previous objects into a test set  	including all variables

	TestAllVars <- cbind(SubjectTest, yTest,xTest)

	# Merges/row binds the full training sets and test sets

	AllVars <- rbind(TrainAllVars, TestAllVars)

	
	# Reads the features file

	features <- read.table("./features.txt", header=FALSE)

	
	# Gives descriptive names to columns in the full dataset
	colnames(AllVars) <- c("Subject","Activity", as.character	(features$V2))
	
	# Extracts only the measurements whose name includes 	"mean()" or "std" and put them (together with the subject 	and activity variables) in an object called SelectedVars
	
	SelectedVars <- cbind(AllVars[,c(1,2)],AllVars[,grepl	("mean()", colnames	(AllVars)) | grepl("std()", 	colnames(AllVars))])

	# Reads the activity labels file

	ActLabels <- read.table("./activity_labels.txt", header=FALSE)

	# In the SelectedVars data frame, replace the activity 	index values by the activity's name

	SelectedVars[,2]=ActLabels[SelectedVars$Activity,"V2"]



	# Creates a table grouped by subjects and activities, 	which is then used by the summarize_each function; the 	latter applies the mean to all variables except subjects 	and activities 

	by_subject_activ <- group_by(SelectedVars,Subject,Activity)
	TidyData <- summarize_each(by_subject_activ,funs(mean),-c(Activity,Subject))

	# Outputs the tidy data set to a text file
	write.table(TidyData,"TidyData.txt",quote=FALSE, row.names=FALSE)

}