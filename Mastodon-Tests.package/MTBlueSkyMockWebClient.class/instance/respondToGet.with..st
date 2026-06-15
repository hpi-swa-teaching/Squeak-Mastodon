accessing
respondToGet: aUrl with: aContent
	getResponses at: aUrl put: (MTBlueSkyMockResponse successWith: aContent)
