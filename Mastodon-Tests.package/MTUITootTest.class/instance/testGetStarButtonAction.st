render-buttons
testGetStarButtonAction

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	rendered := morph getStarButton.
	
	self shouldnt: [rendered doButtonAction] raise: Error