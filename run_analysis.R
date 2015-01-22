library(dplyr)
library(reshape2)

# Load and Merge Training and Test Data into a single dataframe
## Load Test Data
raw_test <- read.table("UCI HAR Dataset/test/X_test.txt")
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Add Activity and Subject Data to Rest of Observations
raw_test <- cbind(activity_test, subject_test, raw_test)

## Load Train Data
raw_train <- read.table("UCI HAR Dataset/train/X_train.txt")
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Add Activity and Subject Data to Rest of Observations
raw_train <- cbind(activity_train, subject_train, raw_train)

## Combine Test and Train Data
raw <- rbind(raw_test, raw_train)
rm(raw_test)
rm(raw_train)

# Load and process Feature Names
feature_names <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
feature_names <- c("activity_num", "subject", feature_names[,2])

# Extract Indices of features to keep (mean and standard deviation measurements)
feature_indx <- grep("[Mm]ean|std",feature_names)

# Reform Feature Name List and Indices
feature_names <- c("activity_num", "subject", feature_names[feature_indx])
feature_indx <- c(1, 2, feature_indx)

# Extract Mean and STD Measurements
raw <- raw[,feature_indx]

# Reformat Observation Names
feature_names <- sub("^f","FFT_",feature_names)
feature_names <- sub("^t","", feature_names)
feature_names <- sub("^angle\\(","meanAngleBtwn__", feature_names)
feature_names <- sub("Acc","Accel", feature_names)
feature_names <- sub("BodyBody","Body", feature_names)
feature_names <- sub("Body","Body_", feature_names)
feature_names <- sub("Gravity","Gravity_", feature_names)
feature_names <- gsub("-","_", feature_names)
feature_names <- sub("Jerk","_Jerk", feature_names)
feature_names <- sub("Mag","_Magnitude", feature_names)
feature_names <- sub("_([XYZ])$","_\\1axis", feature_names)
feature_names <- sub("tBody","Body", feature_names)
feature_names <- gsub("\\(","", feature_names)
feature_names <- gsub("\\)","", feature_names)
feature_names <- sub("_meanFreq$","_weightedMean", feature_names)
feature_names <- sub("_meanFreq_","_weightedMean_", feature_names)
feature_names <- sub("([XYZ]),","\\1axis__and__", feature_names)
feature_names <- sub("Mean,","_mean__and__", feature_names)
feature_names <- sub("__gravity.*","__Gravity_mean", feature_names)
feature_names <- sub("GravityAccel","Gravity_Accel", feature_names)

# Set Feature Names in dataframe
colnames(raw) <- feature_names

# Load Activity Descriptions
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt",
                             stringsAsFactors = FALSE,
                             col.names = c("activity_num","activity"))

# Replace Activity Numbers with Activity Names
raw <- left_join(raw,activity_names)
raw <- select(raw,-activity_num)
raw <- mutate(raw, activity = as.factor(activity), subject = as.factor(subject))

# Extract a mean value for each feature for each Activity/Subject pair.
rawmelt <- melt(raw, id.vars = c("activity", "subject"))
feature_averages <- dcast(rawmelt, activity + subject ~ variable, mean)

# Print averages dataframe to a text file.
write.table(feature_averages, "feature_averages.txt", row.names = FALSE)