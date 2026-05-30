requests
httpGet: aUrl do: aBlock
	lastGetUrl := aUrl.
	aBlock value: self.
	^ getResponses
		at: aUrl
		ifAbsent: [MTBlueSkyMockResponse failureWith: '' code: 404]
