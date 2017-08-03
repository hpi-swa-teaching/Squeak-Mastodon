as yet unclassified
testAccountFollowingCount
	| Model |
	
	Model := MTAccount new.
	
	Model followingCount: 5.
	
	self assert: (Model followingCount)  equals: (5). 