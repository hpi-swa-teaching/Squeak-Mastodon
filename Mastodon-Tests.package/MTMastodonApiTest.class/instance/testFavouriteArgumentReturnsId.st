configuration
testFavouriteArgumentReturnsId

	self assert: (MTMastodonApi new favouriteArgumentForToot: nil id: '12345') equals: '12345'