getter/setter
testFollowingCount

	| Model |
	Model := MTAccount new.
	
	Model followingCount: DataProvider defaultFollowingCount.
	
	self assert: Model followingCount equals: DataProvider defaultFollowingCount