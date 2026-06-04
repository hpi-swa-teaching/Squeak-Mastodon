getter/setter
testImageType

	| media |
	media := MTMedia new.
	
	media type: 'image'.
	
	self assert: media type equals: 'image'