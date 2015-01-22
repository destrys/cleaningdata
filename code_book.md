# Features_averages code book
This Codebook describes the contents of the feature_averages dataset.
This dataset was processed with run_analysis.R as descibed in the README.
Each row contains the average values of a subset of the features for a particular activity and subject.
The subset of features are those that report the mean or standard deviation of one of the original measurements.

## Feature Naming Logic
Besides the Activity and Subject columns, the column names are combinations of words that can be used to describe the columns:
* FFT: A fast fourier transform was applied to the original data to convert the data to requency space.
* Body/Gravity: The component of the measurment due to the movement of the subject(Body) or the force of gravity(Gravity). A Butterworth filter with a corner freqency of 0.3Hz was used to separate the body components(higher frequency) from the gravity components(lower frequency).
* Accel/Gyro: The data were measured with the accelerometer(Accel) or the Gyrometer(Gyro). 
The accelerometers measure acceleration while the gyrometers measure angular velocity.
* Jerk: The data were the derivatives of the raw data, thus reporting the change in acceleration or rotation.
* mean/std: The data were the mean(mean) or standard deviation(std) of the raw data. Remember that the data in feature_averages are the mean of repeated measurements of the mean or standard deviations of repeated activities by different subjects.
* weightedMean: For the frequency domain data (FFT), a mean frequency calculated by weighting the frequencies.
* X/Y/Zaxis: The data were measured along either the X, Y, or Z axis.
* Magnitude: Using the X/Y/Zaxis data, the absolute magnitude of the measure was calculated using the Euclian norm.
* meanAngleBtwn: The mean angle between two measurement's vectors.
