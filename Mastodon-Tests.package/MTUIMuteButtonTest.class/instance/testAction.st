actions
testAction

	| buttonMorph |
	buttonMorph := MTUIMuteButton new
		arguments: {self mastodonApi secondAccount id};
		active: self mastodonApi secondAccountRelationship muting.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error.
	self assert: buttonMorph active = true