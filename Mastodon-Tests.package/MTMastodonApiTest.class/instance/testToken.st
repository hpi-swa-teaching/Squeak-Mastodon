tests
testToken
	| API |
	API := MTMastodonApi new.
	
	API baseUrl: DataProvider defaultBaseURL.
	
	self assert: (API baseUrl) equals: (DataProvider defaultBaseURL).