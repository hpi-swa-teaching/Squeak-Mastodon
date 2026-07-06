render
testGetQuotePolicyWindowNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getQuotePolicyWindow notNil