endpoints-timelines
getTrendingTimelineMax: aTootID

	^ {self thirdToot} select: [:each | each id asInteger < aTootID asInteger]