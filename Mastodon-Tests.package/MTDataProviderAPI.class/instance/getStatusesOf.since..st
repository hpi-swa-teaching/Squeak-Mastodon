endpoints-timelines
getStatusesOf: anAccountID since: aTootID
	
	getStatusesOfSinceCalled := true.
	
	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each account id asInteger = anAccountID asInteger and: [each id asInteger > aTootID asInteger]]