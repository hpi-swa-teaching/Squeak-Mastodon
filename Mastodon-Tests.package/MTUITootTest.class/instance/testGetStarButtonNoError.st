render-buttons
testGetStarButtonNoError

	| morph |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [morph getStarButton] raise: Error