views
testLoadProfileViewForCurrentUserLoadsProfileView

	| window |
	window := MTUIWindow new.
	
	window loadProfileViewForCurrentUser.
	
	self assert: window viewMorph class equals: MTUIProfile