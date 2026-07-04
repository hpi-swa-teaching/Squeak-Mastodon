tests
testDeserializeTrending
	| toots |
	toots := MTMastodonApi getInstance
		deserialize: MTDataProvider mockTrendingResponse
		intoCollectionOf: MTToot.

	self assert: toots size equals: 2.
	toots do: [:toot | self assert: toot class equals: MTToot].