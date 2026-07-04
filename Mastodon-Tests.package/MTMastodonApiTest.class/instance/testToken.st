tests
testToken
	| API |
	API := MTMastodonApi new.
	
	API baseUrl: MTDataProvider defaultBaseURL.
	
	self assert: (API baseUrl) equals: (MTDataProvider defaultBaseURL).