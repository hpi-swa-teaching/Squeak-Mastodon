actions
testAction

	| buttonMorph |
	buttonMorph := MTUIBlockButton new
		arguments: {self mastodonApi secondAccount id};
		active: self mastodonApi secondAccountRelationship muting.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error.
	self assert: buttonMorph active = true