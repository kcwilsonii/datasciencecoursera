
# Read in Features data
features <- read.table("features.txt")

# Read in Activity labels
activity_labels <- read.table("activity_labels.txt")
names(activity_labels)[names(activity_labels) == "V2"] <- "Activity"


# Read in Training data
subject_train <- read.table("subject_train.txt")
subject_train["RowNames"] <- row.names(subject_train)

y_train <- read.table("y_train.txt")
y_train["RowNames"] <- row.names(y_train)
#add in labels for activity data 
y_train <- merge(y_train,activity_labels,by.x = "V1", by.y = "V1",all=TRUE)
x_train <- read.table("x_train.txt")

#set columnnames based on features data
colnames(x_train) <- features$V2
x_train["RowNames"] <- row.names(x_train)

#Merge all 3 training data files
train_Data_1 <- merge(subject_train,y_train,by.x = "RowNames", by.y = "RowNames",all=TRUE)
Train_Data_All <- merge(train_Data_1,x_train,by.x = "RowNames", by.y = "RowNames",all=TRUE)
names(Train_Data_All)[names(Train_Data_All) == "V1.x"] <- "Subject"
names(Train_Data_All)[names(Train_Data_All) == "V1.y"] <- "Activity_Code"


#Repeat process used for train data on test data
subject_test <- read.table("subject_test.txt")
subject_test["RowNames"] <- row.names(subject_test)
y_test <- read.table("y_test.txt")
y_test["RowNames"] <- row.names(y_test)
y_test <- merge(y_test,activity_labels,by.x = "V1", by.y = "V1",all=TRUE)
x_test <- read.table("x_test.txt")
colnames(x_test) <- features$V2
x_test["RowNames"] <- row.names(x_test) 
test_Data_1 <- merge(subject_test,y_test,by.x = "RowNames", by.y = "RowNames",all=TRUE)
Test_Data_All <- merge(test_Data_1,x_test,by.x = "RowNames", by.y = "RowNames",all=TRUE)
names(Test_Data_All)[names(Test_Data_All) == "V1.x"] <- "Subject"
names(Test_Data_All)[names(Test_Data_All) == "V1.y"] <- "Activity_Code"


#reduce train and test data sets to only variables for Men and standard
Train_Data_mean_Std <- Train_Data_All[grep("*RowNames|Subject|Activity|std|mean*",colnames(Train_Data_All))]
Test_Data_mean_Std <- Test_Data_All[grep("*RowNames|Subject|Activity|std|mean*",colnames(Test_Data_All))]

#install reshape package for melt
install.packages("reshape")
library(reshape)

# remove rownames and copy data to another data frame , this is for using melt process to tidy data
Test_Data_mean_Std_No_RowNames <- Test_Data_mean_Std[ , !(names(Test_Data_mean_Std) %in% "RowNames")]
Melted_Test_Data_mean_Std <- melt.data.frame(Test_Data_mean_Std_No_RowNames, id=c("Subject", "Activity_Code","Activity"))

#aggregate test data and then display data
Test_Data_Agg <- aggregate(value ~ Subject+Activity_Code+Activity+variable,Melted_Test_Data_mean_Std, mean)
View(Test_Data_Agg)


#repeat melt and aggregation process for Train data.
Train_Data_mean_Std_No_RowNames <- Train_Data_mean_Std[ , !(names(Train_Data_mean_Std) %in% "RowNames")]
Melted_Train_Data_mean_Std <- melt.data.frame(Train_Data_mean_Std_No_RowNames, id=c("Subject", "Activity_Code","Activity"))
Train_Data_Agg <- aggregate(value ~ Subject+Activity_Code+Activity+variable,Melted_Train_Data_mean_Std, mean)
View(Train_Data_Agg)