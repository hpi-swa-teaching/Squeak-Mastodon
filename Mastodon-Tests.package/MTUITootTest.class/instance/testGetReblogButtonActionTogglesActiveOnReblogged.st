render-buttons
testGetReblogButtonActionTogglesActiveOnReblogged

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstTootReblogged.
	rendered := morph getReblogButton.
	
	self assert: rendered active equals: true.
	
	self shouldnt: [rendered doButtonAction] raise: Error.
	
	self assert: rendered active equals: false