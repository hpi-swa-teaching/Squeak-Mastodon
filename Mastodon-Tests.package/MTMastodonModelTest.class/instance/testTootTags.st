toot
testTootTags

	| model |
	model := MTToot new.
	
	model tags: '#hashtags'.
	
	self assert: model tags equals: '#hashtags'