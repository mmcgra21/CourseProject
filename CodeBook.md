After running "run_analysis.R", two datasets should be saves in the current workspace:
	"df":  Contains the data of all trials for each subject doing each activity.
	"df_means":  Contains the mean of the data from all trails for each subject for each activity.
	
Both dataframes have the same columns, each of which have equivalent descriptions.

	[1]  "subjectId"
		Each number identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
		Identifies which activity was being performed, it can be one of the following six: walking, walking_upstairs, walking_downstairs, 
		sitting, standing, or laying.
		The average acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').
		The average acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').
		The average acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').
		The standard deviation of the acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').
	[7]  "timeBodyAccelerationStandardDevationYaxis"
		The standard deviation of the acceleration of the body in the time domain, along the y-axis, (in standard gravity units 'g').
		The standard deviation of the acceleration of the body in the time domain, along the z-axis, (in standard gravity units 'g').
		The average acceleration due to gravity in the time domain, along the x-axis (in standard gravity units 'g').
		The average acceleration due to gravity in the time domain, along the y-axis (in standard gravity units 'g').
		The average acceleration due to gravity in the time domain, along the z-axis (in standard gravity units 'g').
		The standard deviation of the acceleration due to gravity in the time domain, along the x-axis (in standard gravity units 'g').
		The standard deviation of the acceleration due to gravity in the time domain, along the y-axis (in standard gravity units 'g').
		The standard deviation of the acceleration due to gravity in the time domain, along the z-axis (in standard gravity units 'g').
		The average jerk acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').
		The average jerk acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').
		The average jerk acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').
		The standard deviation of the jerk acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').
		The standard deviation of the jerk acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').
		The standard deviation of the jerk acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').
		The average angular velocity of the body in the time domain, along the x-axis (in radians per second).
		The average angular velocity of the body in the time domain, along the y-axis (in radians per second).
		The average angular velocity of the body in the time domain, along the z-axis (in radians per second).
		The standard deviation of the angular velocity of the body in the time domain, along the x-axis (in radians per second).
		The standard deviation of the angular velocity of the body in the time domain, along the y-axis (in radians per second).
		The standard deviation of the angular velocity of the body in the time domain, along the z-axis (in radians per second).
		The average jerk angular velocity of the body in the time domain, along the x-axis (in radians per second).
		The average jerk angular velocity of the body in the time domain, along the y-axis (in radians per second).
		The average jerk angular velocity of the body in the time domain, along the z-axis (in radians per second).
		The standard deviation of the jerk angular velocity of the body in the time domain, along the x-axis (in radians per second).
		The standard deviation of the jerk angular velocity of the body in the time domain, along the y-axis (in radians per second).
		The standard deviation of the jerk angular velocity of the body in the time domain, along the z-axis (in radians per second).
		The magnitude of the average acceleration of the body in the time domain (in standard gravity units 'g').
		The magnitude of the standard deviation of the acceleration of the body in the time domain (in standard gravity units 'g').
		The magnitude of the average acceleration due to gravity in the time domain (in standard gravity units 'g').
		The magnitude of the standard deviation of the acceleration due to gravity in the time domain (in standard gravity units 'g').
		The magnitude of the average jerk acceleration of the body in the time domain (in standard gravity units 'g').
	[38] "timeBodyAccelerationJerkMagnitudeStandardDevation"
		The magnitude of the standard deviation of the jerk acceleration of the body in the time domain (in standard gravity units 'g').
		The magnitude of the average angular velocity of the body in the time domain (in radians per second).
		The magnitude of the standard deviation of the angular velocity of the body in the time domain (in radians per second).
		The magnitude of the average jerk angular velocity of the body in the time domain (in radians per second).
		The magnitude of the standard deviation of the jerk angular velocity of the body in the time domain (in radians per second).
		The average acceleration of the body in the frequency domain, along the x-axis (in Hertz).
		The average acceleration of the body in the frequency domain, along the y-axis (in Hertz).
		The average acceleration of the body in the frequency domain, along the z-axis (in Hertz).
		The standard deviation of the acceleration of the body in the frequency domain, along the x-axis (in Hertz).
		The standard deviation of the acceleration of the body in the frequency domain, along the y-axis (in Hertz).
		The standard deviation of the acceleration of the body in the frequency domain, along the z-axis (in Hertz).
		The average jerk acceleration of the body in the frequency domain, along the x-axis (in Hertz).
		The average jerk acceleration of the body in the frequency domain, along the y-axis (in Hertz).
		The average jerk acceleration of the body in the frequency domain, along the z-axis (in Hertz).
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the x-axis (in Hertz).
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the y-axis (in Hertz).
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the z-axis (in Hertz).
		The average angular velocity of the body in the frequency domain, along the x-axis (in Hertz).
		The average angular velocity of the body in the frequency domain, along the y-axis (in Hertz).
		The average angular velocity of the body in the frequency domain, along the z-axis (in Hertz).
		The standard deviation of the angular velocity of the body in the frequency domain, along the x-axis (in Hertz).
		The standard deviation of the angular velocity of the body in the frequency domain, along the y-axis (in Hertz).
		The standard deviation of the angular velocity of the body in the frequency domain, along the z-axis (in Hertz).
		The magnitude of the average acceleration of the body in the frequency domain (in Hertz).
		The magnitude of the standard deviation of the acceleration of the body in the frequency domain (in Hertz).
		The magnitude of the average jerk acceleration of the body in the frequency domain (in Hertz).
		The magnitude of the standard deviation of the jerk acceleration of the body in the frequency domain (in Hertz).
		The magnitude of the average angular velocity of the body in the frequency domain (in Hertz).
		The magnitude of the standard deviation of the angular velocity of the body in the frequency domain (in Hertz).
		The magnitude of the average jerk angular velocity of the body in the frequency domain (in Hertz).
		The magnitude of the standard deviation of the jerk angular velocity of the body in the frequency domain (in Hertz).