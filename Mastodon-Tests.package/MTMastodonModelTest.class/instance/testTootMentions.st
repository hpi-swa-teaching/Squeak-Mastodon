tests
testTootMentions

	| Model |
	Model := MTToot new.
	
	Model mentions: false.
	
	self assert: Model mentions equals: false