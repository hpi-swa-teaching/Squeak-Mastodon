json
testFromJson

	| media |
	media := MTMedia from: DataProvider defaultImage.
	
	self assert: media type equals: 'image'.
	self assert: media id equals: DataProvider defaultImageId.
	self assert: media url equals: DataProvider defaultImageUrl.
	self assert: media previewUrl equals: DataProvider defaultImagePreviewUrl