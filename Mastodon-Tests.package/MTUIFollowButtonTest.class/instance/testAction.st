actions
testAction

	| buttonMorph |
	buttonMorph := MTUIFollowButton new
		arguments: {self mastodonApi secondAccount id};
		active: self mastodonApi secondAccountRelationship following.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error.
	self assert: buttonMorph active = true