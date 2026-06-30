endpoints-timelines
getHomeTimelineSince: aTootID

	^ {self firstToot. self thirdToot} select: [:each | each id asInteger > aTootID asInteger]