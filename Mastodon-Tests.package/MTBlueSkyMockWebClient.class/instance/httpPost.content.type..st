requests
httpPost: aUrl content: aContent type: aType

	lastPostUrl := aUrl.
	lastPostContent := aContent.
	lastPostType := aType.
	^ postResponse ifNil: [MTBlueSkyMockResponse successWith: '{}']