render
testRender

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph render] raise: Error.
	
	self assert: rendered notNil