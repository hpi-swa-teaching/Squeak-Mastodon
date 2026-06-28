tests
testContextReturnsAncestorsAndDescendants

	| result |
	result := MTMastodonApi getInstance postContextFrom: DataProvider mockContextResponse.

	self deny: result isError.
	self assert: (result value at: #ancestors) size equals: 1.
	self assert: (result value at: #descendants) size equals: 2.
	((result value at: #ancestors), (result value at: #descendants))
		do: [:toot | self assert: toot class equals: MTToot]