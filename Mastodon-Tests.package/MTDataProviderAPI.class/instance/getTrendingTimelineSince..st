endpoints-timelines
getTrendingTimelineSince: aTootID

	getTrendingTimelineSinceCalled := true.

	^ {self thirdToot} select: [:each | each id asInteger > aTootID asInteger]