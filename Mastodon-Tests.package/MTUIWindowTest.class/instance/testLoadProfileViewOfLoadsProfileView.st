views
testLoadProfileViewOfLoadsProfileView

	| window |
	window := MTUIWindow new.
	
	window loadProfileViewOf: MTDataProvider firstAccount.
	
	self assert: window viewMorph class equals: MTUIProfile