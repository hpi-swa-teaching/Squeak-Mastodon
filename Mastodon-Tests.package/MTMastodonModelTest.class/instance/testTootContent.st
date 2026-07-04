toot
testTootContent

	| model |
	model := MTToot new.
	
	model content: 'HPI ist cool'.
	
	self assert: model content equals: 'HPI ist cool'