endpoints-timelines
getLiveTimelineMax: aTootID
	
	getLiveTimelineMaxCalled := true.
	
	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each id asInteger < aTootID asInteger]