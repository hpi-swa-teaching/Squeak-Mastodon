render
testGetElementMorph

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph getElementMorph] raise: Error.
	
	self assert: rendered notNil