render
testGetNoteMorph

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph getNoteMorph] raise: Error.
	
	self assert: rendered notNil