render-buttons
testGetReplyButtonContent

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	rendered := morph getReplyButton.
	
	self assert: rendered class equals: MTUIReplyButton