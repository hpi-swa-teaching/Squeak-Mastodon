render-buttons
testGetBlockButton

	| morph rendered |
	morph := MTUIAccount for: self mastodonApi secondAccount.
	
	self shouldnt: [rendered := morph getDirectTootButton] raise: Error.
	self shouldnt: [rendered doButtonAction] raise: Error.
	
	self assert: rendered notNil.
	self assert: rendered class equals: MTUIDirectTootButton