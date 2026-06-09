helpers
isScheduledPostTimeValid: aDateAndTime

	^ aDateAndTime - self minimumSchedulingDelay < DateAndTime now