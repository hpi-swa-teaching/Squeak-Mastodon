getter/setter
testImageId

	| media |
	media := MTMedia new.
	
	media id: DataProvider defaultImageId.
	
	self assert: media id equals: DataProvider defaultImageId