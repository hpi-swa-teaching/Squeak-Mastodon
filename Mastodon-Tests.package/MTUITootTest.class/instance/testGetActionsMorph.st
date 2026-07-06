render
testGetActionsMorph

	| morph rendered |
	morph := MTUIToot for: self mastodonApi secondToot.
	
	self shouldnt: [rendered := morph getActionsMorph] raise: Error.
	
	self assert: rendered notNil