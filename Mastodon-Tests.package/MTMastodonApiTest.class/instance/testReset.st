tests
testReset 
	| API |
	API := MTMastodonApi new.
	
	API username: 'schmidtflo'.
	API password: '123'.
	API baseURL: 'https://mastodon.network'.

	API reset.
	
	self assert: (API username) equals: (nil). 	
	self assert: (API password) equals: (nil).
	self assert: (API baseURL) equals: (nil).

