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
  to create a single dataframe