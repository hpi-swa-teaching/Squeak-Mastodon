render
testRender

	| morph |
	morph := MTUIStarButton new
		arguments: {self mastodonApi firstToot id};
		active: self mastodonApi firstToot favourited.
	
	self shouldnt: [morph render] raise: Error