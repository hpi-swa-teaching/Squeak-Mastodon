actions
testAction

	| buttonMorph |
	buttonMorph := MTUIStarButton new
		arguments: {self mastodonApi firstToot id};
		active: self mastodonApi firstToot favourited.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error.
	self assert: buttonMorph active = true