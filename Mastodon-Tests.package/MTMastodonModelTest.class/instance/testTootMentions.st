tests
testTootMentions

	| model |
	model := MTToot new.
	
	model mentions: false.
	
	self assert: model mentions equals: false