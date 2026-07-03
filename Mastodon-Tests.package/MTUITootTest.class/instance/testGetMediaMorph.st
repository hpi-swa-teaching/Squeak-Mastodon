render
testGetMediaMorph

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph getMediaMorph] raise: Error.
	
	self assert: rendered notNil