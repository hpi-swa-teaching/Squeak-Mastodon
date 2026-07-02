tests
testPassword

	| api |
	api := MTMastodonApi new.
	
	api password: 'testpassword'.
	
	self assert: api password equals: 'testpassword'