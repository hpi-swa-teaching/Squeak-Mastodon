tests
testPassword
	| API |
	API := MTMastodonApi new.
	
	API password: 'testpassword'.
	
	self assert: (API password) equals: ('testpassword').