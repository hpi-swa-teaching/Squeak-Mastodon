configuration
testBaseURL

	| api |
	api := MTMastodonApi new.
	
	api baseURL: 'https://mastodon.social'.
	
	self assert: api baseURL equals: 'https://mastodon.social'