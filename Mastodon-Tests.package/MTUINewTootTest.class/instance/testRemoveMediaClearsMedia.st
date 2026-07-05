actions
testRemoveMediaClearsMedia

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		removeMedia.
	
	self assert: newTootView media isEmpty