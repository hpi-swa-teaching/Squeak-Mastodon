tests
testRepliesFromContextReturnsOnlyDescendants

	| result |
	result := mastodonApi repliesFromContext: DataProvider mockContextResponse.

	self deny: result isError.
	self assert: result value size equals: 2.
	result value do: [:toot | self assert: toot class equals: MTToot]