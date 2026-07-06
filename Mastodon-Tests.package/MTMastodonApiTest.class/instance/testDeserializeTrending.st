tests
testDeserializeTrending

	| result jsonString |
	jsonString := Json render: MTDataProvider trendingTootsResponseJson.
	result := self mastodonApi deserialize: jsonString intoCollectionOf: MTToot.

	self assert: result equals: MTDataProvider trendingTootsResponse