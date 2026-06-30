endpoints-timelines
getStatusesOf: anAccountID

	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each account id asInteger = anAccountID asInteger]