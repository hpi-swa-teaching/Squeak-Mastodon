render-buttons
testGetReblogButtonContent

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	rendered := morph getReblogButton.
	
	self assert: rendered class equals: MTUIReblogButton.
	self assert: rendered active equals: false