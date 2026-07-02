tests
testSearchCapturesFollowStatus

	| api client accounts |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=alice'
		with: self sampleSearchJson.
	api := self apiWithMockClient: client token: 'search-token'.
	
	accounts := (api search: 'alice') value accounts.
	
	self assert: accounts first followUri equals: 'at://did:plc:me/app.bsky.graph.follow/abc123'.
	self assert: (accounts at: 2) followUri equals: ''