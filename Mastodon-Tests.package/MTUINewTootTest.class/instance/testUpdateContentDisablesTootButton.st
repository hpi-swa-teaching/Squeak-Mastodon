updating
testUpdateContentDisablesTootButton

	| newTootView |
	newTootView := MTUINewTootClassTest new.
	newTootView updateContent: 'Test';
		updateContent: ''.
	
	self assert: newTootView tootButton enabled equals: true