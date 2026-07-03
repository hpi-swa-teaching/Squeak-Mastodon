render
testRender

	| morph |
	morph := MTUIFollowButton new
		arguments: {self mastodonApi secondAccount id};
		active: self mastodonApi secondAccountRelationship following.
	
	self shouldnt: [morph render] raise: Error