actions
testRemoveMediaDoesNotChangeVisibilitySetting

	| newTootView visibility |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'public';
		media: {MTDataProvider emptyImageForm} asOrderedCollection.
	
	visibility := newTootView visibilitySetting.
	
	newTootView removeMedia.
	
	self assert: newTootView visibilitySetting equals: visibility