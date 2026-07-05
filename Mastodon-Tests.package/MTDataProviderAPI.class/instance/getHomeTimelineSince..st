endpoints-timelines
getHomeTimelineSince: aTootID
	
	getHomeTimelineSinceCalled := true.
	
	^ {self firstToot. self thirdToot} select: [:each | each id asInteger > aTootID asInteger]