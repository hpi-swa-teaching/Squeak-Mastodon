actions
testAction

	| buttonMorph |
	buttonMorph := MTUIReplyButton new
		arguments: {self mastodonApi firstToot}.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error