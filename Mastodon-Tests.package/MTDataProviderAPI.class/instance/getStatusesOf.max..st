endpoints-timelines
getStatusesOf: anAccountID max: aTootID
	
	getStatusesOfMaxCalled := true.
	
	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each account id asInteger = anAccountID asInteger and: [each id asInteger < aTootID asInteger]]