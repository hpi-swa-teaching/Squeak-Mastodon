tests
testContextReturnsAncestorsAndDescendants

	| result |
	result := self mastodonApi postContextFrom: MTDataProvider mockContextResponse.
	
	self assert: (result at: #ancestors) size equals: 1.
	self assert: (result at: #descendants) size equals: 2.
	(result at: #ancestors), (result at: #descendants) do: [:toot | self assert: toot class equals: MTToot]