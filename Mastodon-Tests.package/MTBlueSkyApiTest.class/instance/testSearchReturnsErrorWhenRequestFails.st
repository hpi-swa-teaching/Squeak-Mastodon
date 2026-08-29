search endpoints
testSearchReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=ghost'.
	api := self apiWithMockClient: client token: 'search-token'.
	
	result := api search: 'ghost'.
	
	self assert: result isError equals: true