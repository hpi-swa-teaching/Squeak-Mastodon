views
testLoadProfileViewForCurrentUserCallsGetCurrentUser

	| window |
	window := MTUIWindow new.
	
	window loadProfileViewForCurrentUser.
	
	self assert: self mastodonApi getCurrentUserCalled