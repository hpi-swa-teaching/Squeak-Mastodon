views
testLoadApropiateViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadApropiateView] raise: Error