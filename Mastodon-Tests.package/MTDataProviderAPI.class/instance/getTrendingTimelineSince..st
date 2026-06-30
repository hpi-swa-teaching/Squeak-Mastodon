endpoints-timelines
getTrendingTimelineSince: aTootID

	^ {self thirdToot} select: [:each | each id asInteger > aTootID asInteger]