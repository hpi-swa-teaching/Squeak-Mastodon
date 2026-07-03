render
testRender

	| morph |
	morph := MTUIDirectTootButton new arguments: {self mastodonApi firstAccount federatedUsername}.
	
	self shouldnt: [morph render] raise: Error