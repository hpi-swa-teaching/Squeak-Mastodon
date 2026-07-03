render-buttons
testGetReblogButtonNoError

	| morph |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [morph getReblogButton] raise: Error