endpoints-timelines
getLiveTimelineSince: aTootID

	getLiveTimelineSinceCalled := true.

	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each id asInteger > aTootID asInteger]