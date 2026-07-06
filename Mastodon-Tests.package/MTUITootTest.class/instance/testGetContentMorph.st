render
testGetContentMorph

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph getContentMorph] raise: Error.
	
	self assert: rendered notNil