render
testRender

	| morph |
	morph := MTUIReblogButton new
		arguments: {self mastodonApi firstToot id};
		active: self mastodonApi firstToot reblogged.
	
	self shouldnt: [morph render] raise: Error