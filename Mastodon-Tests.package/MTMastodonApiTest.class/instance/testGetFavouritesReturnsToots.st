status endpoints
testGetFavouritesReturnsToots

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/favourites'
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getFavourites.

	self assert: result value size equals: 1.
	self assert: result value first class equals: MTToot