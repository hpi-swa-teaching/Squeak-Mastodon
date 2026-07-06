endpoints-timelines
getLiveTimeline	
	
	getLiveTimelineCalled := true.

	^ {self firstToot. self secondToot. self thirdToot}