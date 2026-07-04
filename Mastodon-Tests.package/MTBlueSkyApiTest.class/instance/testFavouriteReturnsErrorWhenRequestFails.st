like endpoints
testFavouriteReturnsErrorWhenRequestFails

	| api client toot result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 500).
	api := self apiWithMockClient: client token: 'like-token'.
	api instVarNamed: 'did' put: 'did:plc:alice'.
	toot := MTToot new
		id: 'at://did:plc:bob/app.bsky.feed.post/abc';
		cid: 'cid-post';
		favouritesCount: 5;
		yourself.
	
	result := api favourite: toot.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky like request failed'.
	self assert: toot favouritesCount equals: 5