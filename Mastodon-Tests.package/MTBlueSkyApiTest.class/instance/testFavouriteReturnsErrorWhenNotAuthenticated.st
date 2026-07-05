like endpoints
testFavouriteReturnsErrorWhenNotAuthenticated

	| api client toot result |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'like-token'.
	toot := MTToot new
		id: 'at://did:plc:bob/app.bsky.feed.post/abc';
		cid: 'cid-post';
		favouritesCount: 0;
		yourself.
	
	result := api favourite: toot.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky like failed'