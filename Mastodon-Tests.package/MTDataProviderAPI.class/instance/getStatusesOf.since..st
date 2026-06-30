endpoints-timelines
getStatusesOf: anAccountID since: aTootID

	^ {self firstToot. self secondToot. self thirdToot} select: [:each | each account id asInteger = anAccountID asInteger and: [each id asInteger > aTootID asInteger]]