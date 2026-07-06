render
testGetTitleMorphNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getTitleMorph notNil