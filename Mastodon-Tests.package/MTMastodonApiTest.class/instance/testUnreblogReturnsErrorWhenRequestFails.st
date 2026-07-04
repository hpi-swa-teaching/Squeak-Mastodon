action endpoints
testUnreblogReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 500).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.

	result := api unreblog: '43'.

	self assert: result isError equals: true.
	self assert: result error equals: 'Mastodon unreblog request failed'