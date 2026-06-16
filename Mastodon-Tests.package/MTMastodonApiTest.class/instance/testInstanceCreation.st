tests
testInstanceCreation
	
	| api |
	api := MTMastodonApi getInstance.
	
	self assert: (api baseURL) equals: DataProvider defaultBaseURL.
	self assert: (api token) equals: DataProvider defaultToken.