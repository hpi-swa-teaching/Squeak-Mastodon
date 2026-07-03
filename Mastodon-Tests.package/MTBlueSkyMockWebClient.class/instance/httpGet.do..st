requests
httpGet: aUrl do: aBlock

	self lastGetUrl: aUrl.
	aBlock value: self.
	^ self getResponses at: aUrl ifAbsent: [MTBlueSkyMockResponse failureWith: '' code: 404]