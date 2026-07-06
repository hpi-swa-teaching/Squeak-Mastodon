render-buttons
testGetStarButtonContent

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	rendered := morph getStarButton.
	
	self assert: rendered class equals: MTUIStarButton