views
testLoadChooseAccountViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadChooseAccountView] raise: Error