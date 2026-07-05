configuration
testToken

	| api |
	api := MTMastodonApi new.
	
	api token: 'secret-token'.
	
	self assert: api token equals: 'secret-token'