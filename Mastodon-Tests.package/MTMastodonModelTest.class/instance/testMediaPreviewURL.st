tests
testMediaPreviewURL

	| model |
	model := MTMedia new.
	
	model previewUrl: 'eine URL'.
	
	self assert: model previewUrl equals: 'eine URL'