tests
testDeserializeTrending
	| toots |
	toots := mastodonApi
		deserialize: DataProvider mockTrendingResponse
		intoCollectionOf: MTToot.

	self assert: toots size equals: 2.
	toots do: [:toot | self assert: toot class equals: MTToot].