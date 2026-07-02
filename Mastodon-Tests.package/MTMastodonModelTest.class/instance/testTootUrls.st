tests
testTootUrls

	| model |
	model := MTToot new.
	
	model urls: false.
	
	self assert: model urls equals: false