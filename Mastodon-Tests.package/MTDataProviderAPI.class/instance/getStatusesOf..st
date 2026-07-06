endpoints-timelines
getStatusesOf: anAccountID
	
	getStatusesOfCalled := true.
	
	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each account id asInteger = anAccountID asInteger]