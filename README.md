# cleaningdata
This repo contains a script to clean and summarize a dataset of activity measurements from a Samsung Galaxy S smartphone.

## Initial Data
The data used for this course project was downloaded from [this address](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). And here is [the full description of the initial data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
To run run_analysis.R the dataset needs be be downloaded and unzipped in this repository's main directory. The directory name should be "UCI HAR Dataset".

## run_analysis.R
The code to clean and summarize the intial data into a single tidy dataset is contained in run_analysis.R. 
The following steps are performed in the code:
*  Load and combine the data

  Each observation is split into 3 file: the phone data, the subject number, and the activity number. 
  Additionally, the data are split into two sets: training and test for six total files:
  *  test/X_test.txt: test phone data
  *  test/y_test.txt: test activity numbers
  *  test/subject_test.txt: test subject numbers
  *  train/X_train.txt: training phone data
  *  train/y_train.txt: training activity numbers
  *  train/subject_train: training subject numbers
  
  For this project I combined the phone, subject, and activity data
  into a dataframe by adding the subject and activity data as new columns. I then concatenated the rows of  the training and test datframes
  to create a single dataframe.

* Load and process the feature names

  The names of the features are stored in features.txt. After loading those, I extracted the features that contain the mean or standard deviation
  of a measurement, while keeping the activity and subject identifiers. Using the index of the feature names that were retained, I selected a
  subset of columns from the large dataframe.

* Reformat the Feature Names

  The names of the features that come with the data are quite short and not always clear. Using a number of regex replacements, I coaxed
  the names to be more descriptive. I also removed the hyphens, parentheses, and inserted underscores to make the feature names easier to read.

* Insert Feature Names into datafram

  The work thus far had the feature names in a separate list from the large data frame. I replaced the column names with the much more descriptive
  feature names.

* Load Activity Names and Insert into dataframe.

  The activity data in y_train.txt and y_test.txt are numbers corresponding to the activities listed in activity_labels.txt
  At this point, I loaded activity_labels.txt into a small dataframe and use a join to insert the activity name as a new column. I also removed the 
  activity number column as it is was redundant with the activity name.

* Extract the mean value for each Subject/Activity Pair

  For the course project, we were assigned to produce a tidy dataset of the mean values of each of the features the the large dataset for each
  Subject/Activity Pair. This means that for each activity, there is an average value of each feature for each subject. To accomplish this, I used
  the melt and dcast functions from the reshape2 pacakge. Using Melt with the subject and activity columns as keys converts the dataframe 
  into a tall dataset with only 4 columns: Subject, Activity, Variable, Value. I oculd then use dcast (specifying mean and the aggregate function)
  to return a new data frame with the mean of each Variable (feature) for each combination of subject and activity. This dataframe was the goal.

* Export!

  I used write.table to export the small tidy dataset to submit for grading.

## feature_average.txt
This is the tidy dataset I submitted for grading

## code_book.md
This code book describes the contents of the feature_averages data. 
  