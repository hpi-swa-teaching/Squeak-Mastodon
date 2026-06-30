endpoints-timelines
getLiveTimelineSince: aTootID

	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each id asInteger > aTootID asInteger]