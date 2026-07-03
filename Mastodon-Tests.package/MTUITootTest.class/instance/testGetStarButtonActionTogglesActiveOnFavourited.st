render-buttons
testGetStarButtonActionTogglesActiveOnFavourited

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstTootFavourited.
	rendered := morph getStarButton.
	
	self assert: rendered active equals: true.
	
	self shouldnt: [rendered doButtonAction] raise: Error.
	
	self assert: rendered active equals: false