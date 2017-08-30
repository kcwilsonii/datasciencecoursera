CodeBook, for final Tidy Data set

===========================================================================================================================

   Subject

---------------------------------------------------------------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   8.000
        Median:  15.500
          Mean:  15.500
       3rd Qu.:  23.000
          Max.:  30.000

===========================================================================================================================

   Activity_Code

---------------------------------------------------------------------------------------------------------------------------

   Storage mode: integer

          Min.:  1.000
       1st Qu.:  2.000
        Median:  3.500
          Mean:  3.500
       3rd Qu.:  5.000
          Max.:  6.000

===========================================================================================================================

   Activity

---------------------------------------------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 6 levels

        Values and labels    N    Percent 
                                          
   1 'LAYING'             2370   16.7     
   2 'SITTING'            2370   16.7     
   3 'STANDING'           2370   16.7     
   4 'WALKING'            2370   16.7     
   5 'WALKING_DOWNSTAIRS' 2370   16.7     
   6 'WALKING_UPSTAIRS'   2370   16.7     

===========================================================================================================================

   variable

---------------------------------------------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 79 levels

                      Values and labels   N   Percent
                                                     
    1 'tBodyAcc-mean()-X'               180   1.3    
    2 'tBodyAcc-mean()-Y'               180   1.3    
    3 'tBodyAcc-mean()-Z'               180   1.3    
    4 'tBodyAcc-std()-X'                180   1.3    
    5 'tBodyAcc-std()-Y'                180   1.3    
    6 'tBodyAcc-std()-Z'                180   1.3    
    7 'tGravityAcc-mean()-X'            180   1.3    
    8 'tGravityAcc-mean()-Y'            180   1.3    
    9 'tGravityAcc-mean()-Z'            180   1.3    
   10 'tGravityAcc-std()-X'             180   1.3    
   11 'tGravityAcc-std()-Y'             180   1.3    
   12 'tGravityAcc-std()-Z'             180   1.3    
   13 'tBodyAccJerk-mean()-X'           180   1.3    
   14 'tBodyAccJerk-mean()-Y'           180   1.3    
   15 'tBodyAccJerk-mean()-Z'           180   1.3    
   16 'tBodyAccJerk-std()-X'            180   1.3    
   17 'tBodyAccJerk-std()-Y'            180   1.3    
   18 'tBodyAccJerk-std()-Z'            180   1.3    
   19 'tBodyGyro-mean()-X'              180   1.3    
   20 'tBodyGyro-mean()-Y'              180   1.3    
   21 'tBodyGyro-mean()-Z'              180   1.3    
   22 'tBodyGyro-std()-X'               180   1.3    
   23 'tBodyGyro-std()-Y'               180   1.3    
   24 'tBodyGyro-std()-Z'               180   1.3    
   25 'tBodyGyroJerk-mean()-X'          180   1.3    
   26 'tBodyGyroJerk-mean()-Y'          180   1.3    
   27 'tBodyGyroJerk-mean()-Z'          180   1.3    
   28 'tBodyGyroJerk-std()-X'           180   1.3    
   29 'tBodyGyroJerk-std()-Y'           180   1.3    
   30 'tBodyGyroJerk-std()-Z'           180   1.3    
   31 'tBodyAccMag-mean()'              180   1.3    
   32 'tBodyAccMag-std()'               180   1.3    
   33 'tGravityAccMag-mean()'           180   1.3    
   34 'tGravityAccMag-std()'            180   1.3    
   35 'tBodyAccJerkMag-mean()'          180   1.3    
   36 'tBodyAccJerkMag-std()'           180   1.3    
   37 'tBodyGyroMag-mean()'             180   1.3    
   38 'tBodyGyroMag-std()'              180   1.3    
   39 'tBodyGyroJerkMag-mean()'         180   1.3    
   40 'tBodyGyroJerkMag-std()'          180   1.3    
   41 'fBodyAcc-mean()-X'               180   1.3    
   42 'fBodyAcc-mean()-Y'               180   1.3    
   43 'fBodyAcc-mean()-Z'               180   1.3    
   44 'fBodyAcc-std()-X'                180   1.3    
   45 'fBodyAcc-std()-Y'                180   1.3    
   46 'fBodyAcc-std()-Z'                180   1.3    
   47 'fBodyAcc-meanFreq()-X'           180   1.3    
   48 'fBodyAcc-meanFreq()-Y'           180   1.3    
   49 'fBodyAcc-meanFreq()-Z'           180   1.3    
   50 'fBodyAccJerk-mean()-X'           180   1.3    
   51 'fBodyAccJerk-mean()-Y'           180   1.3    
   52 'fBodyAccJerk-mean()-Z'           180   1.3    
   53 'fBodyAccJerk-std()-X'            180   1.3    
   54 'fBodyAccJerk-std()-Y'            180   1.3    
   55 'fBodyAccJerk-std()-Z'            180   1.3    
   56 'fBodyAccJerk-meanFreq()-X'       180   1.3    
   57 'fBodyAccJerk-meanFreq()-Y'       180   1.3    
   58 'fBodyAccJerk-meanFreq()-Z'       180   1.3    
   59 'fBodyGyro-mean()-X'              180   1.3    
   60 'fBodyGyro-mean()-Y'              180   1.3    
   61 'fBodyGyro-mean()-Z'              180   1.3    
   62 'fBodyGyro-std()-X'               180   1.3    
   63 'fBodyGyro-std()-Y'               180   1.3    
   64 'fBodyGyro-std()-Z'               180   1.3    
   65 'fBodyGyro-meanFreq()-X'          180   1.3    
   66 'fBodyGyro-meanFreq()-Y'          180   1.3    
   67 'fBodyGyro-meanFreq()-Z'          180   1.3    
   68 'fBodyAccMag-mean()'              180   1.3    
   69 'fBodyAccMag-std()'               180   1.3    
   70 'fBodyAccMag-meanFreq()'          180   1.3    
   71 'fBodyBodyAccJerkMag-mean()'      180   1.3    
   72 'fBodyBodyAccJerkMag-std()'       180   1.3    
   73 'fBodyBodyAccJerkMag-meanFreq()'  180   1.3    
   74 'fBodyBodyGyroMag-mean()'         180   1.3    
   75 'fBodyBodyGyroMag-std()'          180   1.3    
   76 'fBodyBodyGyroMag-meanFreq()'     180   1.3    
   77 'fBodyBodyGyroJerkMag-mean()'     180   1.3    
   78 'fBodyBodyGyroJerkMag-std()'      180   1.3    
   79 'fBodyBodyGyroJerkMag-meanFreq()' 180   1.3    

===========================================================================================================================

   value

---------------------------------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.952
        Median:  -0.342
          Mean:  -0.412
       3rd Qu.:  -0.037
          Max.:   0.975
