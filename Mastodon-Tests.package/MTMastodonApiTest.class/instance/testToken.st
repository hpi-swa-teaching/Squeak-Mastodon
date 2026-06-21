tests
testToken
	| API |
	API := MTMastodonApi new.
	
	API baseUrl: DataProvider defaultBase.
	
	self assert: (API baseUrl) equals: (DataProvider defaultBaseURL).