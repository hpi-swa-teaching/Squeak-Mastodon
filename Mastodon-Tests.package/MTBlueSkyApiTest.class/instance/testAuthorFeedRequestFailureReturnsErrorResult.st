status endpoints
testAuthorFeedRequestFailureReturnsErrorResult

	| api result |
	api := self apiWithMockClient: MTBlueSkyMockWebClient new token: 'feed-token'.
	
	result := api getStatuses: 'did:plc:alice'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky author feed request failed'