render
testGetQuotePolicyWindowNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getQuotePolicyWindow] raise: Error