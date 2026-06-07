getter/setter
testImagePreviewUrl

	| media |
	media := MTMedia new.
	
	media previewUrl: DataProvider defaultImagePreviewUrl.
	
	self assert: media previewUrl equals: DataProvider defaultImagePreviewUrl