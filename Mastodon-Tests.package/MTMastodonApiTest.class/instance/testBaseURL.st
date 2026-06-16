tests
testBaseURL
	
	| api |
	api := MTMastodonApi getInstance.
	api baseURL: DataProvider defaultBaseURL.
	
	self assert: (api baseURL) equals: DataProvider defaultBaseURL.