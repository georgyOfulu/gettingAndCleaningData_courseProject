## Data Dictionary

The data has 561 features calculated from the following basic templates:

| Feature Template| Description
|----------------|-------------------------------------------------------------------------
|tBodyAcc-XYZ |Triaxial linear timebody acceleration signals derived from seperating the acceleration signal `tAcc-XYZ` gotten from the accelerometer in the smartphone during an activity.
|tBodyAccJerk-XYZ| Triaxial linear timebody jerk acceleration signals derived from the timebody acceleration `tAcc-XYZ` and timebody angular velocity `tBodyGyro-XYZ`.
|tBodyAccMag | The magnitude of the triaxial linear timebody acceleration `tBodyAcc-XYZ` calculated using the Euclidean norm.
|tBodyAccJerkMag| The magnitude of the triaxial linear time body jerk acceleration `tBodyAccJerk-XYZ` signals calculated using the Euclidean norm.
tBodyGyro-XYZ| Triaxial timebody angular velocity measured from the gyrometer in the smartphone during an activity.
|tBodyGyroJerk-XYZ| Triaxial timebody jerk angular velocity signals derived from the timebody angular velocy `tBodyGyro-XYZ`.
|tBodyGyroMag | The magnitude of the triaxial time body jerk angular acceleration `tBodyGyro-XYZ`signals calculated using the Euclidean norm.
|tBodyGyroJerkMag | The magnitude of the triaxial time body jerk angular acceleration `tBodyAccJerk-XYZ` signals calculated using the Euclidean norm.
|tGravityAcc-XYZ| Triaxial gravity acceleration signals derived from seperating the acceleration signal gotten from the accelerometer `tAcc-XYZ` during an activity.
|tGravityAccMag| The magnitude of the triaxial time gravity acceleration `tGravityAcc-XYZ` signals calculated using the Euclidean norm.
|fBodyAcc-XYZ | The triaxial frequency linear body acceleration signals calculated by applying a Fast Fourier Transform (FFT) to the triaxial time body linear acceleration signals `tBodyAcc-XYZ`
|fBodyAccJerk-XYZ | The triaxial frequency body linear jerk acceleration signal calculated by applying a Fast Fourier Transform (FFT) to the triaxial time body linear acceleration signals `tBodyAcc-XYZ`
|fBodyAccMag | The magnitude of the triaxial frequency linear body acceleration signals `fBodyAcc-XYZ`.
|fBodyAccJerkMag | The magnitude of the triaxial linear frequency body jerk acceleration `fBodyAccJerk-XYZ` 
|fBodyGyro-XYZ| The triaxial frequency body jerk angular velocity signals calculated by applying a Fast Fourier Transform (FFT) to the triaxial time body linear acceleration signals `tBodyGyro-XYZ`
|fBodyGyroMag| The magnitude of the triaxial frequency body angular velocity signals `fBodyAcc-XYZ`.
|fBodyGyroJerkMag| The magnitude of the triaxial frequency body angular velocity `fBodyAccJerk-XYZ`.

The following set of variables were estimated and applied to the feature templates to produce the 561 variables:

|Measure | Description
|-------|-----------------------------------------
|mean()| Mean value
|std()| Standard deviation
|mad()| Median absolute deviation 
|max()| Largest value in array
|min()| Smallest value in array
|sma()| Signal magnitude area
|energy()| Energy measure. Sum of the squares divided by the number of values. 
|iqr()| Interquartile range 
|entropy()| Signal entropy
|arCoeff()| Autorregresion coefficients with Burg order equal to 4
|correlation()| correlation coefficient between two signals
|maxInds()| index of the frequency component with largest magnitude
|meanFreq()| Weighted average of the frequency components to obtain a mean frequency
|skewness()| skewness of the frequency domain signal 
|kurtosis()| kurtosis of the frequency domain signal 
|bandsEnergy()| Energy of a frequency interval within the 64 bins of the FFT of each window.
|angle()| Angle between to vectors.
|gravityMean| Additional vector obtained by averaging the signals in a signal window sample. This is used on the angle() variable.
|tBodyAccMean| Additional vector obtained by averaging the signals in a signal window sample. This is used on the angle() variable.
|tBodyAccJerkMean| Additional vector obtained by averaging the signals in a signal window sample. This is used on the angle() variable.
|tBodyGyroMean| Additional vector obtained by averaging the signals in a signal window sample. This is used on the angle() variable.
|tBodyGyroJerkMean| Additional vector obtained by averaging the signals in a signal window sample. This is used on the angle() variable.


>**"Please refer to the `features.txt` file for the full list of all 561 variables and the `features_info.txt` file for more information on how the feature templates were derived."**

## High Level Analysis steps
The following high level steps have been applied to the raw data to produce a final tidy data `tidyHARData.txt`.

- Data Cleanup of the test and training data
- Merging the training and test data
- Final Data manipulation to produce the tidy data
- Tiding Variable Names to make the variable names more human readable.
- Write final output datafile to a `.txt` file

> "Please refer to the `detailedAnalysis.rmd` file to see a detailed step-through the analysis. The `run_analysis.R` file contains the script of the analysis" 
