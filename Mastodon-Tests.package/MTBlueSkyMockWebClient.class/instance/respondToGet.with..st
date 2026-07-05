accessing
respondToGet: aUrl with: aContent

	self getResponses at: aUrl put: (MTBlueSkyMockResponse successWith: aContent)