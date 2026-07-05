views
testLoadProfileViewOfNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadProfileViewOf: MTDataProvider firstAccount] raise: Error