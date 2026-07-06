actions
testAction

	| buttonMorph |
	buttonMorph := MTUICommentsButton new arguments: {self mastodonApi firstToot}.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error