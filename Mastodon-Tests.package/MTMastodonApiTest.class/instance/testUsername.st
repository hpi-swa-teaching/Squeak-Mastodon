tests
testUsername
	| API |
	API := MTMastodonApi new.
	
	API username: 'schmidtflo'.
	
	self assert: (API username) equals: ('schmidtflo').