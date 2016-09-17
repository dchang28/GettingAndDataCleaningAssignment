#Code Book#

##Data Source##
Source for original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


##Data Set Background##
Subjects were a group of 30 volunteers within an age bracket of 19-48 years.
 
Each person performed six activities:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

while wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


##Variables##
The following variables were measured in the original data source. An expanded description of the variables used for this analysis can be found at the end of the document.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


##Expanded Description of Tidy Data File##

Description of the variables used for analysis. For this analysis, only the mean and standard deviation measurements were used. In addition, the data files from the "Inertial Signals" folders were not used in analysis.

Note:
mean(): Mean value
std(): Standard deviation

timeBodyAccelerometer-mean()-X             
timeBodyAccelerometer-mean()-Y           
timeBodyAccelerometer-mean()-Z             
timeBodyAccelerometer-std()-X                
timeBodyAccelerometer-std()-Y    
timeBodyAccelerometer-std()-Z              
timeGravityAccelerometer-mean()-X           
timeGravityAccelerometer-mean()-Y           
timeGravityAccelerometer-mean()-Z          
timeGravityAccelerometer-std()-X            
timeGravityAccelerometer-std()-Y           
timeGravityAccelerometer-std()-Z           
timeBodyAccelerometerJerk-mean()-X           
timeBodyAccelerometerJerk-mean()-Y            
timeBodyAccelerometerJerk-mean()-Z           
timeBodyAccelerometerJerk-std()-X           
timeBodyAccelerometerJerk-std()-Y            
timeBodyAccelerometerJerk-std()-Z            
timeBodyGyroscope-mean()-X                
timeBodyGyroscope-mean()-Y            
timeBodyGyroscope-mean()-Z                
timeBodyGyroscope-std()-X                  
timeBodyGyroscope-std()-Y                  
timeBodyGyroscope-std()-Z                     
timeBodyGyroscopeJerk-mean()-X                
timeBodyGyroscopeJerk-mean()-Y                
timeBodyGyroscopeJerk-mean()-Z                
timeBodyGyroscopeJerk-std()-X                
timeBodyGyroscopeJerk-std()-Y               
timeBodyGyroscopeJerk-std()-Z                
timeBodyAccelerometerMagnitude-mean()        
timeBodyAccelerometerMagnitude-std()         
timeGravityAccelerometerMagnitude-mean()     
timeGravityAccelerometerMagnitude-std()      
timeBodyAccelerometerJerkMagnitude-mean()  
timeBodyAccelerometerJerkMagnitude-std()    
timeBodyGyroscopeMagnitude-mean()          
timeBodyGyroscopeMagnitude-std()            
timeBodyGyroscopeJerkMagnitude-mean()        
timeBodyGyroscopeJerkMagnitude-std()        
frequencyBodyAccelerometer-mean()-X           
frequencyBodyAccelerometer-mean()-Y         
frequencyBodyAccelerometer-mean()-Z          
frequencyBodyAccelerometer-std()-X           
frequencyBodyAccelerometer-std()-Y          
frequencyBodyAccelerometer-std()-Z           
frequencyBodyAccelerometerJerk-mean()-X     
frequencyBodyAccelerometerJerk-mean()-Y       
frequencyBodyAccelerometerJerk-mean()-Z     
frequencyBodyAccelerometerJerk-std()-X     
frequencyBodyAccelerometerJerk-std()-Y     
frequencyBodyAccelerometerJerk-std()-Z        
frequencyBodyGyroscope-mean()-X   
frequencyBodyGyroscope-mean()-Y             
frequencyBodyGyroscope-mean()-Z             
frequencyBodyGyroscope-std()-X              
frequencyBodyGyroscope-std()-Y              
frequencyBodyGyroscope-std()-Z         
frequencyBodyAccelerometerMagnitude-mean()   
frequencyBodyAccelerometerMagnitude-std()   
frequencyBodyAccelerometerJerkMagnitude-mean()
frequencyBodyAccelerometerJerkMagnitude-std()
frequencyBodyGyroscopeMagnitude-mean()    
frequencyBodyGyroscopeMagnitude-std()    
frequencyBodyGyroscopeJerkMagnitude-mean()
frequencyBodyGyroscopeJerkMagnitude-std()


##Citation##
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Hood, David. "Getting and Cleaning the Assignment." Thoughtfulbloke Aka David Hood. N.p., 26 Jan. 2016. Web. 16 Sept. 2016.
