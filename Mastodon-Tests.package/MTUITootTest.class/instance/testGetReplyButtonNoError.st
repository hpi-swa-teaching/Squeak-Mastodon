render-buttons
testGetReplyButtonNoError

	| morph |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [morph getReplyButton] raise: Error