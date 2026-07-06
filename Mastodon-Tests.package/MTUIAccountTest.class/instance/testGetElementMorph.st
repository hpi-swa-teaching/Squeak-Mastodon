render
testGetElementMorph

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph getElementMorph] raise: Error.
	
	self assert: rendered notNil