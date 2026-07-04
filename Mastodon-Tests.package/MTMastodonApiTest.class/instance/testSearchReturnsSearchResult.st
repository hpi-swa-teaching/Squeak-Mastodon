account endpoints
testSearchReturnsSearchResult

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/search?q=flo&resolve=true'
		with: DataProvider mockSearch.
	api := self apiWithMockClient: client.

	result := api search: 'flo'.

	self assert: result value class equals: MTSearchResult.
	self assert: result value accounts size equals: 1