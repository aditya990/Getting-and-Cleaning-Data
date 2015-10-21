
### This file contains descriptions of all the variables used in the run_analysis.R file

 * activities	: contains activity label and its corresponding activity
 
 * train_data 	: contains data of x_train.txt
 * train_var  	: contains data of y_train.txt
 * sub_train	: contains data of subjects for training set
 * header_train	: contrains subject,activity id and activity
 * train_dataset  : contains tidy training data with subject id,activity id,activity and other columns

 * test_data 	: contains data of x_test.txt
 * test_var  	: contains data of y_test.txt
 * sub_train	: contains data of subjects for testing set
 * header_test	: contrains subject,activity id and activity
 * test_dataset  	: contains tidy training data with subject id,activity id,activity and other columns

 * features	: contains data of features.txt
 * features_extract: contains only second column of features which is exact feature
 * all_features	: a character vector containing subject ID, activity id,activity and features-extract data

 * final_data	: merged dataset of training and testing along with column names of only mean and std
 * tidy_data	: datset of means of all columns in final_data as per subject and activity