actions
testAction

	| buttonMorph |
	buttonMorph := MTUIDirectTootButton new arguments: {self mastodonApi firstAccount federatedUsername}.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error