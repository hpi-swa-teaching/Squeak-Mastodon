tests
testInstanceCreation
	
	| api |
	MTMastodonApi changeInstanceTo: MTDataProvider firstAccountCredentials.
	api := MTMastodonApi getInstance.
	
	self assert: (api baseUrl) equals: MTDataProvider defaultBaseURL.
	self assert: (api token) equals: MTDataProvider defaultToken.