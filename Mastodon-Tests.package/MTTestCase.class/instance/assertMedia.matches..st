helpers
assertMedia: aResultedMedia matches: anExpectedMedia

	self assert: aResultedMedia id equals: anExpectedMedia id.
	self assert: aResultedMedia type equals: anExpectedMedia type.
	self assert: aResultedMedia url equals: anExpectedMedia url.
	self assert: aResultedMedia previewUrl equals: anExpectedMedia previewUrl