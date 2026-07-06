render
testGetCommentsButton

	| morph rendered |
	morph := MTUIToot for: self mastodonApi firstToot.
	
	self shouldnt: [rendered := morph getCommentsButton] raise: Error.
	
	self assert: rendered notNil