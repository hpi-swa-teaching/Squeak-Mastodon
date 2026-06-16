tests
testSearchHitsSearchActorsEndpoint
	| api client |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=alice' with: self sampleSearchJson.
	api := self apiWithMockClient: client token: 'search-token'.

	api search: 'alice'.

	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=alice'