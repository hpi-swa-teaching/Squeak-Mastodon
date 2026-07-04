comparing
testInequalityOnBaseURL

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTDataProvider firstAccountCredentials.
	
	secondLoginCredentials := MTDataProvider firstAccountCredentials baseUrl: MTDataProvider secondBaseURL.
	
	self deny: firstLoginCredentials = secondLoginCredentials.
	self deny: (firstLoginCredentials equals: secondLoginCredentials).
	self deny: firstLoginCredentials hash = secondLoginCredentials hash