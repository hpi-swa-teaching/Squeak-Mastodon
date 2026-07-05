tests
testBaseURL
	
	| api |
	api := self mastodonApi baseUrl: MTDataProvider firstBaseURL.
	
	self assert: (api baseUrl) equals: MTDataProvider firstBaseURL.