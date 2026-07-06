render-buttons
testGetReplyButtonAction

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	rendered := morph getReplyButton.
	
	self shouldnt: [rendered doButtonAction] raise: Error