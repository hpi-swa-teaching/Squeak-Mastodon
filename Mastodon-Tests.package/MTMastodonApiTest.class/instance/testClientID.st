tests
testClientID

	| api |
	api := MTMastodonApi new.
	
	api clientID: 'thisisaid'.
	
	self assert: api clientID equals: 'thisisaid'