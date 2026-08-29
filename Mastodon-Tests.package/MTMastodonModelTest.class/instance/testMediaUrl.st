media
testMediaUrl

	| model |
	model := MTMedia new.
	
	model url: 'https://example.invalid/media/1.png'.
	
	self assert: model url equals: 'https://example.invalid/media/1.png'