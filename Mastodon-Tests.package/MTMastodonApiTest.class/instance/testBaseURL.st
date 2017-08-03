tests
testBaseURL
	| API |
	API := MTMastodonApi new.
	
	API baseURL: 'https://mastodon.social'.
	
	self assert: (API baseURL) equals: ('https://mastodon.social').