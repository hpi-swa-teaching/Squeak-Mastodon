endpoints-timelines
getHomeTimelineMax: aTootID

	getHomeTimelineMaxCalled := true.

	^ {self firstToot. self thirdToot} select: [:each | each id asInteger < aTootID asInteger]