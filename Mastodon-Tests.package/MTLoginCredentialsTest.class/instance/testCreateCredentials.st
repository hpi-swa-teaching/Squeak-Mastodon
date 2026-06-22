initialization
testCreateCredentials

	| loginCredentials |
	loginCredentials := DataProvider firstAccountCredentials.
	
	self assert: loginCredentials baseUrl equals: DataProvider defaultBaseURL.
	self assert: loginCredentials token equals: DataProvider defaultToken