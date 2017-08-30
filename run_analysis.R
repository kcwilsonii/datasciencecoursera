
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

#remove rownames in perpearation for Combining the sets
Test_Data_All <- Test_Data_All[ , !(names(Test_Data_All) %in% "RowNames")]
Train_Data_All <- Train_Data_All[ , !(names(Train_Data_All) %in% "RowNames")]

# combine data into one data set
Combined_Data <- rbind(Train_Data_All,Test_Data_All)

#reduce data sets to only variables for Men and standard
Combined_Data_mean_Std <- Combined_Data[grep("*RowNames|Subject|Activity|std|mean*",colnames(Combined_Data))]

#install reshape package for melt
install.packages("reshape")
library(reshape)

# remove rownames and copy data to another data frame , this is for using melt process to tidy data

Melted_Combined_Data_mean_Std <- melt.data.frame(Combined_Data_mean_Std, id=c("Subject", "Activity_Code","Activity"))

#aggregate data and then display data
Combined_Data_Data_Agg <- aggregate(value ~ Subject+Activity_Code+Activity+variable,Melted_Combined_Data_mean_Std, mean)
View(Combined_Data_Data_Agg)

write.table(Combined_Data_Data_Agg, file = "Tidy_Dataset.txt",row.names = FALSE)