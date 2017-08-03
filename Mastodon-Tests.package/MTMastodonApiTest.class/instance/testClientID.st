tests
testClientID
	| API |
	API := MTMastodonApi new.
	
	API clientID: 'thisisaid'.
	
	self assert: (API clientID) equals: ('thisisaid').