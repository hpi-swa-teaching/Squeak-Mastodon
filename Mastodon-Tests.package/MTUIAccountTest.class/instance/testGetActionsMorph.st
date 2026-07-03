render
testGetActionsMorph

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph getActionsMorph] raise: Error.
	
	self assert: rendered notNil