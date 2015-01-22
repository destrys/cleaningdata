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

## Full feature list:		
* activity:		
* subject:		
* Body_Accel_mean_Xaxis:	Mean of the body's component of acceleration along the X axis.
* Body_Accel_mean_Yaxis:	Mean of the body's component of acceleration along the Y axis.
* Body_Accel_mean_Zaxis:	Mean of	the body's component of acceleration along the Z axis.
* Body_Accel_std_Xaxis:		Standard Deviation of the body's component of acceleration along the X axis.
* Body_Accel_std_Yaxis:		Standard Deviation of the body's component of acceleration along the Y axis.
* Body_Accel_std_Zaxis:		Standard Deviation of the body's component of acceleration along the Z axis.
* Gravity_Accel_mean_Xaxis:	Mean of gravity's component of acceleration along the X axis.
* Gravity_Accel_mean_Yaxis:	Mean of	gravity's component of acceleration along the Y axis.
* Gravity_Accel_mean_Zaxis:	Mean of	gravity's component of acceleration along the Z axis.
* Gravity_Accel_std_Xaxis:	Standard Deviation of gravity's component of acceleration along the X axis.
* Gravity_Accel_std_Yaxis:	Standard Deviation of gravity's component of acceleration along the Y axis.
* Gravity_Accel_std_Zaxis:	Standard Deviation of gravity's component of acceleration along the Z axis.
* Body_Accel_Jerk_mean_Xaxis:	Mean of the derivative of the body's component of acceleration along the X axis.
* Body_Accel_Jerk_mean_Yaxis:	Mean of	the derivative of the body's component of acceleration along the Y axis.
* Body_Accel_Jerk_mean_Zaxis:	Mean of	the derivative of the body's component of acceleration along the Z axis.
* Body_Accel_Jerk_std_Xaxis:	Standard Deviation of the derivative of the body's component of acceleration along the X axis.
* Body_Accel_Jerk_std_Yaxis:	Standard Deviation of the derivative of the body's component of acceleration along the Y axis.
* Body_Accel_Jerk_std_Zaxis:	Standard Deviation of the derivative of the body's component of acceleration along the Z axis.
* Body_Gyro_mean_Xaxis:		Mean of the body's component of rotation around the X axis.
* Body_Gyro_mean_Yaxis:		Mean of the body's component of	rotation around	the Y axis.
* Body_Gyro_mean_Zaxis:		Mean of the body's component of	rotation around	the Z axis.
* Body_Gyro_std_Xaxis:		Standard Deviation of the body's component of rotation around the X axis.
* Body_Gyro_std_Yaxis:		Standard Deviation of the body's component of rotation around the Y axis.
* Body_Gyro_std_Zaxis:		Standard Deviation of the body's component of rotation around the Z axis.
* Body_Gyro_Jerk_mean_Xaxis:	Mean of	the derivative of the body's component of rotation around the X axis.
* Body_Gyro_Jerk_mean_Yaxis:	Mean of	the derivative of the body's component of rotation around the Y axis.
* Body_Gyro_Jerk_mean_Zaxis:	Mean of	the derivative of the body's component of rotation around the Z axis.
* Body_Gyro_Jerk_std_Xaxis:	Standard Deviation of the derivative of the body's component of rotation around the X axis.
* Body_Gyro_Jerk_std_Yaxis:	Standard Deviation of the derivative of the body's component of rotation around the Y axis.
* Body_Gyro_Jerk_std_Zaxis:	Standard Deviation of the derivative of the body's component of rotation around the Z axis.
* Body_Accel_Magnitude_mean:	Mean of the Magnitude of the body's component of acceleration.
* Body_Accel_Magnitude_std:	Standard Deviation of the Magnitude of the body's component of acceleration.
* Gravity_Accel_Magnitude_mean:	Mean of the Magnitude of gravity's component of acceleration.
* Gravity_Accel_Magnitude_std:	Standard Deviation of the Magnitude of gravity's component of acceleration.
* Body_Accel_Jerk_Magnitude_mean:	Mean of	the Magnitude of the derivative of the body's component of acceleration.
* Body_Accel_Jerk_Magnitude_std:	Standard Deviation of the Magnitude of the derivative of the body's component of acceleration.
* Body_Gyro_Magnitude_mean:		Mean of the Magnitude of the body's component of rotation.
* Body_Gyro_Magnitude_std:		Standard Deviation of the Magnitude of the body's component ofrotation.
* Body_Gyro_Jerk_Magnitude_mean:	Mean of the Magnitude of the derivative of the body's component of rotation.
* Body_Gyro_Jerk_Magnitude_std:		Standard Deviation of the Magnitude of the derivative of the body's component of rotation.
* FFT_Body_Accel_mean_Xaxis:	Mean of the frequencies of the body's component of acceleration along the X axis.
* FFT_Body_Accel_mean_Yaxis:	Mean of	the frequencies	of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_mean_Zaxis:	Mean of	the frequencies	of the body's component of acceleration along the Z axis.
* FFT_Body_Accel_std_Xaxis:	Standard Deviation of the frequencies of the body's component of acceleration along the X axis.
* FFT_Body_Accel_std_Yaxis:	Standard Deviation of the frequencies of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_std_Zaxis:	Standard Deviation of the frequencies of the body's component of acceleration along the Z axis.
* FFT_Body_Accel_weightedMean_Xaxis:	Weighted Mean of the frequencies of the body's component of acceleration along the X axis.
* FFT_Body_Accel_weightedMean_Yaxis:	Weighted Mean of the frequencies of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_weightedMean_Zaxis:	Weighted Mean of the frequencies of the body's component of acceleration along the Z axis.
* FFT_Body_Accel_Jerk_mean_Xaxis:	Mean of	the frequencies of the derivative of the body's component of acceleration along the X axis.
* FFT_Body_Accel_Jerk_mean_Yaxis:	Mean of the frequencies of the derivative of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_Jerk_mean_Zaxis:	Mean of the frequencies of the derivative of the body's component of acceleration along the Z axis.
* FFT_Body_Accel_Jerk_std_Xaxis:	Standard Deviation of the frequencies of the derivative of the body's component of acceleration along the X axis.
* FFT_Body_Accel_Jerk_std_Yaxis:	Standard Deviation of the frequencies of the derivative of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_Jerk_std_Zaxis:	Standard Deviation of the frequencies of the derivative of the body's component of acceleration along the Z axis.
* FFT_Body_Accel_Jerk_weightedMean_Xaxis:	Weighted Mean of the frequencies of the derivative of the body's component of acceleration along the X axis.
* FFT_Body_Accel_Jerk_weightedMean_Yaxis:	Weighted Mean of the frequencies of the derivative of the body's component of acceleration along the Y axis.
* FFT_Body_Accel_Jerk_weightedMean_Zaxis:	Weighted Mean of the frequencies of the derivative of the body's component of acceleration along the Z axis.
* FFT_Body_Gyro_mean_Xaxis:	Mean of the frequencies of the body's component of rotation around the X axis.
* FFT_Body_Gyro_mean_Yaxis:	Mean of the frequencies of the body's component of rotation around the Y axis.
* FFT_Body_Gyro_mean_Zaxis:	Mean of the frequencies of the body's component of rotation around the Z axis.
* FFT_Body_Gyro_std_Xaxis:	Standard Deviation of the frequencies of the body's component of rotation around the X axis.
* FFT_Body_Gyro_std_Yaxis:	Standard Deviation of the frequencies of the body's component of rotation around the Y axis.
* FFT_Body_Gyro_std_Zaxis:	Standard Deviation of the frequencies of the body's component of rotation around the Z axis.
* FFT_Body_Gyro_weightedMean_Xaxis:	Weighted Mean of the frequencies of the body's component of rotation around the X axis.
* FFT_Body_Gyro_weightedMean_Yaxis:	Weighted Mean of the frequencies of the body's component of rotation around the Y axis.
* FFT_Body_Gyro_weightedMean_Zaxis:	Weighted Mean of the frequencies of the body's component of rotation around the Z axis.
* FFT_Body_Accel_Magnitude_mean:	Mean of	the Magnitude of the frequencies of the body's component of acceleration.
* FFT_Body_Accel_Magnitude_std:		Standard Deviation of the Magnitude of the frequencies of the body's component of acceleration.
* FFT_Body_Accel_Magnitude_weightedMean:	Weighted Mean of the Magnitude of the frequencies of the body's component of acceleration.
* FFT_Body_Accel_Jerk_Magnitude_mean:	Mean of the Magnitude of the frequencies of the derivative of the body's component of acceleration.
* FFT_Body_Accel_Jerk_Magnitude_std:	Standard Deviation of the Magnitude of the frequencies of the derivative of the body's component of acceleration.
* FFT_Body_Accel_Jerk_Magnitude_weightedMean:	Weighted Mean of the Magnitude of the frequencies of the derivative of the body's component of acceleration.
* FFT_Body_Gyro_Magnitude_mean:		Mean of the Magnitude of the frequencies of the body's component of rotation.
* FFT_Body_Gyro_Magnitude_std:		Standard Deviation of the Magnitude of the frequencies of the body's component of rotation.
* FFT_Body_Gyro_Magnitude_weightedMean:	Weighted Mean of the Magnitude of the frequencies of the body's component of rotation.
* FFT_Body_Gyro_Jerk_Magnitude_mean:	Mean of the Magnitude of the derivative of the frequencies of the body's component of rotation
* FFT_Body_Gyro_Jerk_Magnitude_std:	Standard Deviation of the Magnitude of the derivative of the frequencies of the body's component of rotation
* FFT_Body_Gyro_Jerk_Magnitude_weightedMean:	Weighted Mean of the Magnitude of the derivative of the frequencies of the body's component of rotation.
* meanAngleBtwn__Body_Accel_mean__and__Gravity_mean:	Mean Angle between the mean of the body's component of acceleration and the mean of gravity's component of acceleration.
* meanAngleBtwn__Body_Accel_Jerk_mean__and__Gravity_mean:	Mean Angle between the mean of the derivative of the body's component of acceleration and the mean of gravity's component of acceleration.
* meanAngleBtwn__Body_Gyro_mean__and__Gravity_mean:		Mean Angle between the mean of the body's component of rotation and the mean of gravity's component of acceleration.
* meanAngleBtwn__Body_Gyro_Jerk_mean__and__Gravity_mean:	Mean Angle between the mean of the derivative of the body's component of rotation and the mean of gravity's component of acceleration.
* meanAngleBtwn__Xaxis__and__Gravity_mean:		Mean Angle between the X axis and gravity's component of acceleration.
* meanAngleBtwn__Yaxis__and__Gravity_mean:		Mean Angle between the Y axis and gravity's component of acceleration.
* meanAngleBtwn__Zaxis__and__Gravity_mean:		Mean Angle between the Z axis and gravity's component of acceleration.