as yet unclassified
testAccountFollowersCount
	| Model |
	
	Model := MTAccount new.
	
	Model followersCount: 5.
	
	self assert: (Model followersCount)  equals: (5). 