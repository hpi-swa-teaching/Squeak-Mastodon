render
testGetAccountMorph

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph getAccountMorph] raise: Error.
	
	self assert: rendered notNil