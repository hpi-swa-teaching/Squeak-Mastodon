views
testLoadThreadViewOfNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadThreadViewOf: MTDataProvider firstToot] raise: Error