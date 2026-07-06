tests
testInstanceCreation
	
	| api |
	MTMastodonApi changeInstanceTo: MTDataProvider firstAccountCredentials.
	api := MTMastodonApi getInstance.
	
	self assert: (api baseUrl) equals: MTDataProvider firstBaseURL.
	self assert: (api token) equals: MTDataProvider firstToken.