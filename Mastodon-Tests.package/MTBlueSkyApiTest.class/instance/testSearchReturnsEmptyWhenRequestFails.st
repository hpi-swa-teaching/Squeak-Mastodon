tests
testSearchReturnsEmptyWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=ghost'.
	api := self apiWithMockClient: client token: 'search-token'.
	
	result := api search: 'ghost'.
	
	self assert: result isSuccess equals: true.
	self assert: result value accounts isEmpty equals: true