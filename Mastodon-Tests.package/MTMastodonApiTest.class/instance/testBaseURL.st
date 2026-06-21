tests
testBaseURL
	
	| api |
	api := MTMastodonApi getInstance.
	api baseUrl: DataProvider defaultBaseURL.
	
	self assert: (api baseUrl) equals: DataProvider defaultBaseURL.