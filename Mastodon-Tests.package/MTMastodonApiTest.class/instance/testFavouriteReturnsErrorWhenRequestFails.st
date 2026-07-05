action endpoints
testFavouriteReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 500).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api favourite: '43'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'Mastodon favourite request failed'