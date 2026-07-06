endpoints-timelines
getTrendingTimelineMax: aTootID

	getTrendingTimelineMaxCalled := true.

	^ {self thirdToot} select: [:each | each id asInteger < aTootID asInteger]