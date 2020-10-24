# Getting and Cleaning Data — Final Project by George Ofulu
This is my submission to the John Hopkin's "Getting and Cleaning Data" course on coursera — Part of the Data Science specialization

### Introduction

This is a final project for the Getting and Cleaning Data course in the [John Hopkin's Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science?utm_source=gg&utm_medium=sem&utm_campaign=01-BrandedSearch-US&utm_content=01-BrandedSearch-US&campaignid=380484307&adgroupid=102187343498&device=c&keyword=&matchtype=b&network=g&devicemodel=&adpostion=&creativeid=433079694377&hide_mobile_promo&gclid=CjwKCAjwoc_8BRAcEiwAzJevtWsVrzhDwzbHDXb6PMB_gp37j5UEhnbKtp6FeacF3hcBZhvIpqBVBRoC_TUQAvD_BwE). The aim is to do some data analysis workflow tasks such as collecting data, some basic wrangling, and also be able to document it properly with very descriptive Cookbook.rmd and Readme.md files for reproducibilty and context in downstream datascience workflow tasks such as modelling.

The data is gotten from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 30 volunteers were asked to do 7 tasks (walking, walking upstairs, walking downstairs, sitting, standing, and laying) wearing the Samsung SII on their waist. The built-in accelerometer and gyrometers of the device generated tri-axial linear acceleration data and tri-axial angular velocity data. These raw data signals were passed through some signal preprocessing as detailed in the readme file of the downloaded dataset from the [UCI_HAR_DataDownloadLink](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Files

The following files are used in the project:

1. **rawData:** Conatins the raw data downloaded from the UCI Machine Learning Repository
2. **readme.md:** Contains an overview of the entire project.
3. **cookbook.rmd:** This is an R Markdown notebook that would detail the analysis steps that would transform the rawData to a tidy dataset for downstream analysis.
4. **analysis.R:** The R script that contains the code used for the data analysis.
5. **tidyHARData.csv:** The final tidy dataset in csv format.


### Data Output
The rawData would be passed through the following highlevel wrangling steps to produce tidyHARData.csv — the tidy dataset. Please refer to the cookbook.rmd file for more details of the processing steps.

- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Use descriptive activity names to name the activities in the dataset.
- Appropriately label the data set with descriptive variable names.
- Create a second, independent tidy data set with the average of each variable for each activity and each subject.

