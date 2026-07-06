render-buttons
testGetReblogButtonActionTogglesActive

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	rendered := morph getReblogButton.
	
	self assert: rendered active equals: false.
	
	self shouldnt: [rendered doButtonAction] raise: Error.
	
	self assert: rendered active equals: true