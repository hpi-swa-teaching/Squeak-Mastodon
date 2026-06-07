json
testFromJsonImage

	| toot |
	toot := MTToot from: DataProvider defaultTootWithImageJsonObject.
	
	self assert: toot account notNil.
	self assert: toot content equals: DataProvider defaultContent.
	self assert: toot createdAt equals: DataProvider defaultTootCreatedAt.
	self assert: toot favourited equals: DataProvider defaultFavourited.
	self assert: toot favouritesCount equals: DataProvider defaultFavouritesCount.
	self assert: toot id equals: DataProvider defaultTootId.
	self assert: toot inReplyToAccountID equals: DataProvider defaultAccountId.
	self assert: toot reblogged equals: DataProvider defaultReblogged.
	self assert: toot reblogsCount equals: DataProvider defaultReblogsCount.
	self assert: toot urls equals: DataProvider defaultTootUrl.
	self assert: toot media size equals: 1.
	
	self assert: toot tags equals: nil.
	self assert: toot mentions equals: nil.
	self assert: toot quote equals: nil.
	self assert: toot reblog equals: nil