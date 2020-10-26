library(magrittr)
library(dplyr)
library(stringr)

# Download rawData --------------------------------------------------------

rawDataDownloadUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Condition 1: to check if the rawData folder exists
if (!dir.exists("./rawData")) {
  dir.create("./rawData")
}
# Condition 2: to check if the data has already been downloaded to avoid multiple downloads and also to check for an incomplete download.
if (!file.exists("./rawData/data.zip")) {
  download.file(rawDataDownloadUrl, destfile = "./rawData/data.zip")
  unzip("./rawData/data.zip", exdir = "./rawData")
} else if (file.size("./rawData/data.zip") < 62556944) {
  download.file(rawDataDownloadUrl, destfile = "./rawData/data.zip")
} else {
  print("Data Already exists in the target folder")
}


# Data Import -------------------------------------------------------------

testData <- read.table("./rawData/UCI HAR Dataset/test/X_test.txt", header = FALSE)
testDataLabel <- read.table("./rawData/UCI HAR Dataset/test/y_test.txt", header = FALSE)
testDataSubject <- read.table("./rawData/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
trainData <- read.table("./rawData/UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainDataLabel <- read.table("./rawData/UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainDataSubject <- read.table("./rawData/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityLabel <- read.table("./rawData/UCI HAR Dataset/activity_labels.txt", header = FALSE)
featureNames <- read.table("./rawData/UCI HAR Dataset/features.txt", header = FALSE)
featureNames <- as.vector(featureNames[[2]])

# Data Cleanup ------------------------------------------------------------

testData <- data.frame(testDataSubject, testDataLabel, testData)
trainData <- data.frame(trainDataSubject, trainDataLabel, trainData)

names(testData) <- c("subjectID", "activityID", featureNames)
names(trainData) <- c("subjectID", "activityID", featureNames)

# Merging training and test data ------------------------------------------

mergedHARData <- trainData %>% union(testData)


# Final Data manipulation ----------------------------------------

tidyHARData <- mergedHARData %>%
  select(subjectID, activityID, contains("mean()") | contains("std()")) %>%
  group_by(activityID, subjectID) %>%
  summarize(across(.fns = mean))

# Tiding Variable Names ---------------------------------------------------

tidyHARDataNames <- names(tidyHARData)
tidyHARDataNames <- tidyHARDataNames %>%
  str_replace_all("-", "") %>% # remove hyphens
  str_replace_all("mean", "Mean") %>%
  str_replace_all("std", "StdDev") %>%
  str_replace_all("[(][)]", "") %>% # remove all parenthesis "()"
  str_replace_all("X", "Xaxis") %>%
  str_replace_all("Y", "Yaxis") %>%
  str_replace_all("Z", "Zaxis") %>%
  str_replace_all("tbody", "timeBody") %>%
  str_replace_all("fBody", "fourierTransformedBody")
names(tidyHARData) <- tidyHARDataNames

# Write final output datafile ---------------------------------------------
write.table(tidyHARData, "tidyHARData.txt", row.names = FALSE)
