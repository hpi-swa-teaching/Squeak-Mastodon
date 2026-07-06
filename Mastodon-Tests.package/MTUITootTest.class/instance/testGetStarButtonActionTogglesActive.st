render-buttons
testGetStarButtonActionTogglesActive

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	rendered := morph getStarButton.
	
	self assert: rendered active equals: false.
	
	self shouldnt: [rendered doButtonAction] raise: Error.
	
	self assert: rendered active equals: true