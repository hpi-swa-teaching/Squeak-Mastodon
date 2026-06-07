getter/setter
testImageUrl

	| media |
	media := MTMedia new.
	
	media url: DataProvider defaultImageUrl.
	
	self assert: media url equals: DataProvider defaultImageUrl