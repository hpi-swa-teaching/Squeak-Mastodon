tests
testTimelineRequestFailureReturnsErrorResult
	| api result |
	api := self apiWithMockClient: MTBlueSkyMockWebClient new token: 'feed-token'.

	result := api getPrivateTimeline.

	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky timeline request failed'
