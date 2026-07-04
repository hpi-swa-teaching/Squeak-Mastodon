tests
testBaseURL
	
	| api |
	api := self mastodonApi baseUrl: MTDataProvider defaultBaseURL.
	
	self assert: (api baseUrl) equals: MTDataProvider defaultBaseURL.