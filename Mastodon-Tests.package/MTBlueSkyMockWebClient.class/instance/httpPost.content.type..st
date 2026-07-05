requests
httpPost: aUrl content: aContent type: aType

	self lastPostUrl: aUrl.
	self lastPostContent: aContent.
	self lastPostType: aType.
	^ self postResponse ifNil: [MTBlueSkyMockResponse successWith: '{}']