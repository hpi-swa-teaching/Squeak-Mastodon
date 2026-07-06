render
testRender

	| morph |
	morph := MTUIBlockButton new
		arguments: {self mastodonApi secondAccount id};
		active: self mastodonApi secondAccountRelationship muting.
	
	self shouldnt: [morph render] raise: Error