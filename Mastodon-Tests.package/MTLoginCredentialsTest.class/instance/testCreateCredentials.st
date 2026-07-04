initialization
testCreateCredentials

	| loginCredentials |
	loginCredentials := MTDataProvider firstAccountCredentials.
	
	self assert: loginCredentials baseUrl equals: MTDataProvider defaultBaseURL.
	self assert: loginCredentials token equals: MTDataProvider defaultToken