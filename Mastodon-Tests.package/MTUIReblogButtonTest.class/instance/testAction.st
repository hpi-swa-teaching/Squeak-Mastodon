actions
testAction

	| buttonMorph |
	buttonMorph := MTUIReblogButton new
		arguments: {self mastodonApi firstToot id};
		active: self mastodonApi firstToot reblogged.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error.
	self assert: buttonMorph active = true