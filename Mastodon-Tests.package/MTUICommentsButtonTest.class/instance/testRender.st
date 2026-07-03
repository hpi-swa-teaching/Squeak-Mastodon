render
testRender

	| morph |
	morph := MTUICommentsButton new arguments: {self mastodonApi firstToot}.
	
	self shouldnt: [morph render] raise: Error