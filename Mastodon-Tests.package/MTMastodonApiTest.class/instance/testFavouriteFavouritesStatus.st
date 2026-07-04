action endpoints
testFavouriteFavouritesStatus

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: DataProvider mockTootWithoutImage).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api favourite: '43'.
	
	self assert: result isSuccess equals: true.
	self assert: result value class equals: MTToot.
	self assert: result value id equals: 43.
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/statuses/43/favourite'