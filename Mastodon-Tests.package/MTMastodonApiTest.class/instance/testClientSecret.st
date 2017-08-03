tests
testClientSecret
	| API |
	API := MTMastodonApi new.
	
	API clientSecret: 'thisisasecret'.
	
	self assert: (API clientSecret) equals: ('thisisasecret').