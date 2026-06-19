as yet unclassified
testMediaPreviewURL
	| Model |
	
	Model := MTMedia new.
	
	Model previewUrl: 'eine URL'.
		
	self assert: (Model previewUrl)  equals: ('eine URL'). 