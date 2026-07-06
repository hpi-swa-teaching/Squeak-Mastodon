updating
testUpdateTootButtonEnabledForMedia

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: ''.
	newTootView
		media: {MTDataProvider emptyImageForm};
		updateTootButton.
	
	self assert: newTootView tootButton enabled