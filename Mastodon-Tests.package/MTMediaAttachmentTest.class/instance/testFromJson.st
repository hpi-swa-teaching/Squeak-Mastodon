initialization
testFromJson

	| result expected |
	result := MTMediaAttachment from: MTDataProvider firstMediaJson.
	
	expected := MTDataProvider firstMedia.
	
	self assertMedia: result matches: expected