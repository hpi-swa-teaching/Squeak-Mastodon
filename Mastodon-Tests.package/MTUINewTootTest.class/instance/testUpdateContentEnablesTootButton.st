updating
testUpdateContentEnablesTootButton

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView updateContent: 'Test'.
	
	self assert: newTootView tootTextArea contents equals: 'Test'