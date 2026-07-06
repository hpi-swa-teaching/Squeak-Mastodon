actions
testTootResetsAfterToot

	| newTootView visibility quotePolicy |
	newTootView := MTUINewToot new.
	
	visibility := 'public'.
	quotePolicy := 'followers'.
	
	newTootView tootTextArea contents: 'Test'.
	
	newTootView
		visibilitySetting: visibility;
		quotePolicySetting: quotePolicy;
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		updateTootButton;
		updateClearImagesButton;
		updateSelectImageButton;
		updateMediaPreview.
	
	newTootView toot.
	
	self assert: newTootView tootTextArea contents asString equals: ''.
	self deny: newTootView tootButton enabled.
	self assert: newTootView media isEmpty.
	self assert: newTootView mediaPreview submorphs isEmpty.
	
	self assert: newTootView visibilitySetting equals: visibility.
	self assert: newTootView quotePolicySetting equals: quotePolicy.
	
	self deny: newTootView clearImagesButton enabled.
	self assert: newTootView selectImageButton enabled