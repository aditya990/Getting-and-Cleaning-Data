## Before Running the file please make sure that R working Directory is inside the project with access to folders 'Train' and 'Test'
## Please make sure package 'plyr' is installed
## The Project consists of 3 parts
###Part 1

 Read training data
	Step 1: Read x_train.txt
	Step 2: Read y_train.txt
	Step 3: Read subjects
	Step 4: Read activities
 Set Proper names to the Subjects and Activites
	Step 1: set column names to activities as Activity_ID and Activity
	Step 2: set column names for Subject as Subject_ID

 Merge all training data
	Step 1: Merge y_train data Activity data as activities
	Step 2: Column Bind Subject and activities as header data
	Step 3: Column bind header data and x_train data


###Part 2

 Read testing data
	Step 1: Read x_test.txt
	Step 2: Read y_test.txt
	Step 3: Read subjects
	Step 4: Read activities
 Set Proper names to the Subjects and Activites
	Step 1: set column names to activities as Activity_ID and Activity
	Step 2: set column names for Subject as Subject_ID

 Merge all training data
	Step 1: Merge y_train data Activity data as activities
	Step 2: Column Bind Subject and activities as header_test data
	Step 3: Column bind header_test data and x_test data

###Part 3
	
 Merge training and testing data
	Step 1: Merge training_dataset and testing_dataset as dataset
	Setp 2: Read features data
	Step 3: Set column names as mentioned in the features's second column(Remember you have to skip first 3 columns of dataset as they are set as Subject_ID and Activities manually
 
 Pull out columns from final dataset with Activity Subject and other columns with mean and standar deviation measurements
 
 Find Mean of the columns and write the data in to a new text file