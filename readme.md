Peer Review Week 4 

I was not sure how they wanted the Training and test data merged so I
just merged the files fo those disparate data sets into one data set 
for training and one for test data

Each set applied the different steps need for the Peer review assignment

First:

  Read in Data from the fetures and activity data files

  Set/change Column name for Activity from V2 to "Activity"
  

Next read in data for Training Data:
  order of load Subject, Y_train, X_train data

  Add a Row_Names columne to each data set. This will alllow
  for merging data on that and have a complete data set
  
  The "Y" data is merged with activity labels by the activity code
  to add the activity label to the data set

  The "X" data has it's Column names changed based on features data set
  column V2

  all 3 training data sets (subject_train,y_train,X_train) are then merged 
  into 1 set


Next read in data for test Data:

  The same base process for training data is used here


Next reduce data sets to needed columns

  Train and Test data is pulled into a nother data frame using grep
  to specify the columns needed for std and mean variables plus the header data.

Install reshape package and load via library.

  Push data sets into another data set minus RowNames data field so data is prepared
  for using melt to put the data into a tidy dataset

  Use melt to create data Tidy data sets for Train and Test sets.



Then agrgegate data from newly formed tidy data sets
  Use aggregate to find the mean of each variable name
  Then use View to show finalized data set for the train and test sets
  Agreggated



