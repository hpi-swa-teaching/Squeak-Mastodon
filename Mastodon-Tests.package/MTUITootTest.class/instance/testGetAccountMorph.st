render
testGetAccountMorph

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph getAccountMorph] raise: Error.
	
	self assert: rendered notNil