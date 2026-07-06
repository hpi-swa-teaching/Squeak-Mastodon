render
testRender

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph render] raise: Error.
	
	self assert: rendered notNil