initialization
testCreateCredentials

	| loginCredentials |
	loginCredentials := MTDataProvider firstAccountCredentials.
	
	self assert: loginCredentials baseUrl equals: MTDataProvider firstBaseURL.
	self assert: loginCredentials token equals: MTDataProvider firstToken