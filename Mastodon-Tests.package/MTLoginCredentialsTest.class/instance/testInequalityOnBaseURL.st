comparing
testInequalityOnBaseURL

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := DataProvider firstAccountCredentials.
	
	secondLoginCredentials := DataProvider firstAccountCredentials baseUrl: DataProvider secondBaseURL.
	
	self deny: firstLoginCredentials = secondLoginCredentials.
	self deny: (firstLoginCredentials equals: secondLoginCredentials).
	self deny: firstLoginCredentials hash = secondLoginCredentials hash