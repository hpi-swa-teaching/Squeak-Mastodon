actions
testResetAfterTootClearsTextAndMedia

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		updateContent: 'Test';
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		resetAfterToot.
	
	self assert: newTootView tootTextArea contents asString equals: ''.
	self assert: newTootView media isEmpty