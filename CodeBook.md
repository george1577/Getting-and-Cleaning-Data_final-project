UCI HAR Dataset CodeBook

The original dataset has 561 variables, 477 variables are distinct, used duplicated function to filter out 84 duplicated variables

Only mean and standard deviation for each measurement variables are of interest, used grep and select function to filter out 393 unrelated
variables, 66 variables are kept in the final dataset (half associated with mean and the other half associated with standard deviation)

66 variables can be broken into 17 main categories:

1. tBodyAcc-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.

2. tGravityAcc-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from gravity acceleration signal.

3. tBodyAccJerk-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Subsequently, the body linear acceleration were derived in time to obtain Jerk signals.

4. tBodyGyro-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   
5. tBodyGyroJerk-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Subsequently, the body angular velocity were derived in time to obtain Jerk signals.

6. tBodyAccMag

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

7. tGravityAccMag
   
   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from gravity acceleration signal.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

8. tBodyAccJerkMag

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Subsequently, the body linear acceleration were derived in time to obtain Jerk signals.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

9. tBodyGyroMag

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

10.tBodyGyroJerkMag

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Subsequently, the body angular velocity were derived in time to obtain Jerk signals.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

11.fBodyAcc-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

12.fBodyAccJerk-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Subsequently, the body linear acceleration were derived in time to obtain Jerk signals.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

13.fBodyGyro-XYZ (measurements from three directions are recorded in three different variables)

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

14.fBodyAccMag

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

15.fBodyAccJerkMag

   Database come from the accelerometer, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   This is from body acceleration signal.
   Subsequently, the body linear acceleration were derived in time to obtain Jerk signals.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

16.fBodyGyroMag

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

17.fBodyGyroJerkMag

   Database come from the gyroscope 3-axial, these time domain signals were captured at a constant rate of 50 Hz.
   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
   Subsequently, the body angular velocity were derived in time to obtain Jerk signals.
   Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
   Finally a Fast Fourier Transform (FFT) was applied to some of these signals

The 66 variables showing above were further broken into two:

1. mean(): Mean value

2. std(): Standard deviation 
   
   

   
   