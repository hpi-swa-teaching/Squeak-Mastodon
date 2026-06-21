tests
testInstanceCreation
	
	| api |
	api := MTMastodonApi getInstance.
	
	self assert: (api baseUrl) equals: DataProvider defaultBaseURL.
	self assert: (api token) equals: DataProvider defaultToken.