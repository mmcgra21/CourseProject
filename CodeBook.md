After running "run_analysis.R", two datasets should be saves in the current workspace:
	"df":  Contains the data of all trials for each subject doing each activity.
	"df_means":  Contains the mean of the data from all trails for each subject for each activity.
	
Both dataframes have the same columns, each of which have equivalent descriptions.

	[1]  "subjectId"
		Each number identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 	[2]  "activityLabel"
		Identifies which activity was being performed, it can be one of the following six: walking, walking_upstairs, walking_downstairs, 
		sitting, standing, or laying.	[3]  "timeBodyAccelerationMeanXaxis"
		The average acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').	[4]  "timeBodyAccelerationMeanYaxis"
		The average acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').	[5]  "timeBodyAccelerationMeanZaxis"
		The average acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').	[6]  "timeBodyAccelerationStandardDevationXaxis"
		The standard deviation of the acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').
	[7]  "timeBodyAccelerationStandardDevationYaxis"
		The standard deviation of the acceleration of the body in the time domain, along the y-axis, (in standard gravity units 'g').	[8]  "timeBodyAccelerationStandardDevationZaxis"
		The standard deviation of the acceleration of the body in the time domain, along the z-axis, (in standard gravity units 'g').	[9]  "timeGravityAccelerationMeanXaxis"
		The average acceleration due to gravity in the time domain, along the x-axis (in standard gravity units 'g').	[10] "timeGravityAccelerationMeanYaxis"
		The average acceleration due to gravity in the time domain, along the y-axis (in standard gravity units 'g').	[11] "timeGravityAccelerationMeanZaxis"
		The average acceleration due to gravity in the time domain, along the z-axis (in standard gravity units 'g').	[12] "timeGravityAccelerationStandardDevationXaxis"
		The standard deviation of the acceleration due to gravity in the time domain, along the x-axis (in standard gravity units 'g').	[13] "timeGravityAccelerationStandardDevationYaxis"
		The standard deviation of the acceleration due to gravity in the time domain, along the y-axis (in standard gravity units 'g').	[14] "timeGravityAccelerationStandardDevationZaxis"
		The standard deviation of the acceleration due to gravity in the time domain, along the z-axis (in standard gravity units 'g').	[15] "timeBodyAccelerationJerkMeanXaxis"
		The average jerk acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').	[16] "timeBodyAccelerationJerkMeanYaxis"
		The average jerk acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').	[17] "timeBodyAccelerationJerkMeanZaxis"
		The average jerk acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').	[18] "timeBodyAccelerationJerkStandardDevationXaxis"
		The standard deviation of the jerk acceleration of the body in the time domain, along the x-axis (in standard gravity units 'g').	[19] "timeBodyAccelerationJerkStandardDevationYaxis"
		The standard deviation of the jerk acceleration of the body in the time domain, along the y-axis (in standard gravity units 'g').	[20] "timeBodyAccelerationJerkStandardDevationZaxis"
		The standard deviation of the jerk acceleration of the body in the time domain, along the z-axis (in standard gravity units 'g').	[21] "timeBodyAngularVelocityMeanXaxis"
		The average angular velocity of the body in the time domain, along the x-axis (in radians per second).	[22] "timeBodyAngularVelocityMeanYaxis"
		The average angular velocity of the body in the time domain, along the y-axis (in radians per second).	[23] "timeBodyAngularVelocityMeanZaxis"
		The average angular velocity of the body in the time domain, along the z-axis (in radians per second).	[24] "timeBodyAngularVelocityStandardDevationXaxis"
		The standard deviation of the angular velocity of the body in the time domain, along the x-axis (in radians per second).	[25] "timeBodyAngularVelocityStandardDevationYaxis"
		The standard deviation of the angular velocity of the body in the time domain, along the y-axis (in radians per second).	[26] "timeBodyAngularVelocityStandardDevationZaxis"
		The standard deviation of the angular velocity of the body in the time domain, along the z-axis (in radians per second).	[27] "timeBodyAngularVelocityJerkMeanXaxis"
		The average jerk angular velocity of the body in the time domain, along the x-axis (in radians per second).	[28] "timeBodyAngularVelocityJerkMeanYaxis"
		The average jerk angular velocity of the body in the time domain, along the y-axis (in radians per second).	[29] "timeBodyAngularVelocityJerkMeanZaxis"
		The average jerk angular velocity of the body in the time domain, along the z-axis (in radians per second).	[30] "timeBodyAngularVelocityJerkStandardDevationXaxis"
		The standard deviation of the jerk angular velocity of the body in the time domain, along the x-axis (in radians per second).	[31] "timeBodyAngularVelocityJerkStandardDevationYaxis"
		The standard deviation of the jerk angular velocity of the body in the time domain, along the y-axis (in radians per second).	[32] "timeBodyAngularVelocityJerkStandardDevationZaxis"
		The standard deviation of the jerk angular velocity of the body in the time domain, along the z-axis (in radians per second).	[33] "timeBodyAccelerationMagnitudeMean"
		The magnitude of the average acceleration of the body in the time domain (in standard gravity units 'g').	[34] "timeBodyAccelerationMagnitudeStandardDevation"
		The magnitude of the standard deviation of the acceleration of the body in the time domain (in standard gravity units 'g').	[35] "timeGravityAccelerationMagnitudeMean"
		The magnitude of the average acceleration due to gravity in the time domain (in standard gravity units 'g').	[36] "timeGravityAccelerationMagnitudeStandardDevation"
		The magnitude of the standard deviation of the acceleration due to gravity in the time domain (in standard gravity units 'g').	[37] "timeBodyAccelerationJerkMagnitudeMean"
		The magnitude of the average jerk acceleration of the body in the time domain (in standard gravity units 'g').
	[38] "timeBodyAccelerationJerkMagnitudeStandardDevation"
		The magnitude of the standard deviation of the jerk acceleration of the body in the time domain (in standard gravity units 'g').	[39] "timeBodyAngularVelocityMagnitudeMean"
		The magnitude of the average angular velocity of the body in the time domain (in radians per second).	[40] "timeBodyAngularVelocityMagnitudeStandardDevation"
		The magnitude of the standard deviation of the angular velocity of the body in the time domain (in radians per second).	[41] "timeBodyAngularVelocityJerkMagnitudeMean"
		The magnitude of the average jerk angular velocity of the body in the time domain (in radians per second).	[42] "timeBodyAngularVelocityJerkMagnitudeStandardDevation"
		The magnitude of the standard deviation of the jerk angular velocity of the body in the time domain (in radians per second).	[43] "frequencyBodyAccelerationMeanXaxis"
		The average acceleration of the body in the frequency domain, along the x-axis (in Hertz).	[44] "frequencyBodyAccelerationMeanYaxis"
		The average acceleration of the body in the frequency domain, along the y-axis (in Hertz).	[45] "frequencyBodyAccelerationMeanZaxis"
		The average acceleration of the body in the frequency domain, along the z-axis (in Hertz).	[46] "frequencyBodyAccelerationStandardDevationXaxis"
		The standard deviation of the acceleration of the body in the frequency domain, along the x-axis (in Hertz).	[47] "frequencyBodyAccelerationStandardDevationYaxis"
		The standard deviation of the acceleration of the body in the frequency domain, along the y-axis (in Hertz).	[48] "frequencyBodyAccelerationStandardDevationZaxis"
		The standard deviation of the acceleration of the body in the frequency domain, along the z-axis (in Hertz).	[49] "frequencyBodyAccelerationJerkMeanXaxis"
		The average jerk acceleration of the body in the frequency domain, along the x-axis (in Hertz).	[50] "frequencyBodyAccelerationJerkMeanYaxis"
		The average jerk acceleration of the body in the frequency domain, along the y-axis (in Hertz).	[51] "frequencyBodyAccelerationJerkMeanZaxis"
		The average jerk acceleration of the body in the frequency domain, along the z-axis (in Hertz).	[52] "frequencyBodyAccelerationJerkStandardDevationXaxis"
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the x-axis (in Hertz).	[53] "frequencyBodyAccelerationJerkStandardDevationYaxis"
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the y-axis (in Hertz).	[54] "frequencyBodyAccelerationJerkStandardDevationZaxis"
		The standard deviation of the jerk acceleration of the body in the frequency domain, along the z-axis (in Hertz).	[55] "frequencyBodyAngularVelocityMeanXaxis"
		The average angular velocity of the body in the frequency domain, along the x-axis (in Hertz).	[56] "frequencyBodyAngularVelocityMeanYaxis"
		The average angular velocity of the body in the frequency domain, along the y-axis (in Hertz).	[57] "frequencyBodyAngularVelocityMeanZaxis"
		The average angular velocity of the body in the frequency domain, along the z-axis (in Hertz).	[58] "frequencyBodyAngularVelocityStandardDevationXaxis"
		The standard deviation of the angular velocity of the body in the frequency domain, along the x-axis (in Hertz).	[59] "frequencyBodyAngularVelocityStandardDevationYaxis"
		The standard deviation of the angular velocity of the body in the frequency domain, along the y-axis (in Hertz).	[60] "frequencyBodyAngularVelocityStandardDevationZaxis"
		The standard deviation of the angular velocity of the body in the frequency domain, along the z-axis (in Hertz).	[61] "frequencyBodyAccelerationMagnitudeMean"
		The magnitude of the average acceleration of the body in the frequency domain (in Hertz).	[62] "frequencyBodyAccelerationMagnitudeStandardDevation"
		The magnitude of the standard deviation of the acceleration of the body in the frequency domain (in Hertz).	[63] "frequencyBodyAccelerationJerkMagnitudeMean"
		The magnitude of the average jerk acceleration of the body in the frequency domain (in Hertz).	[64] "frequencyBodyAccelerationJerkMagnitudeStandardDevation"
		The magnitude of the standard deviation of the jerk acceleration of the body in the frequency domain (in Hertz).	[65] "frequencyBodyAngularVelocityMagnitudeMean"
		The magnitude of the average angular velocity of the body in the frequency domain (in Hertz).	[66] "frequencyBodyAngularVelocityMagnitudeStandardDevation"
		The magnitude of the standard deviation of the angular velocity of the body in the frequency domain (in Hertz).	[67] "frequencyBodyAngularVelocityJerkMagnitudeMean"
		The magnitude of the average jerk angular velocity of the body in the frequency domain (in Hertz).	[68] "frequencyBodyAngularVelocityJerkMagnitudeStandardDevation"
		The magnitude of the standard deviation of the jerk angular velocity of the body in the frequency domain (in Hertz).
