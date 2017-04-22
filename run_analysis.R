
library(plyr)

# read training data files

train_data = read.table("train/X_train.txt")
train_var = read.table("train/y_train.txt")
sub_train = read.table("train/subject_train.txt")
activities = read.table("activity_labels.txt")

# set proper column names for activities,subjects and training activity labels
colnames(activities) = c("Activity_ID","Activity")
colnames(train_var) = "Activity_ID"
colnames(sub_train) = "Subject_ID"

# prepare training data set
merge_activities = merge(train_var,activities, by = "Activity_ID")
header_train = cbind(sub_train,merge_activities)
train_dataset = cbind(header_train,train_data)

# read testing data files
test_data = read.table("test/X_test.txt")
test_var = read.table("test/y_test.txt")
sub_test = read.table("test/subject_test.txt")

# set proper column names for testing activity labels and  subjects
colnames(sub_test) = "Subject_ID"
colnames(test_var) = "Activity_ID"

#prepare testing data set
merge_activities_test = merge(test_var,activities,by = "Activity_ID")
header_test = cbind(sub_test,merge_activities_test)
test_dataset = cbind(header_test,test_data)

#read features and add extra columns that are manually defined i.e. subject_id etc
features = read.table("features.txt")
features_extract = as.character(features[,2])
all_features = append(features_extract,c("Subject_ID","Activity_ID","Activity"),after = 0)

#join both training and testing datasets and features array as column names
final_data = rbind(train_dataset,test_dataset)
colnames(final_data) = all_features

#Extract only the measurements on mean and standard deviation of each measurement
mean_std_index = grep("-(mean|std)\\(\\)",colnames(final_data))
final_data = final_data[,c(1,2,3,mean_std_index)]

#calculate means
tidy_data = ddply(final_data, .(Subject_ID, Activity), function(x) colMeans(x[, 4:69]))

#write the tidy data
write.table(tidy_data,"averages_tidy_data.txt",row.name = FALSE)
