authentication
testWithAccount

	| account api |
	account := MTLoginCredentials
		createWithUsername: 'flo'
		baseURL: 'https://mastodon.social'
		token: 'a-token'.
	api := MTMastodonApi withAccount: account.
	self assert: api baseURL equals: 'https://mastodon.social'.
	self assert: api token equals: 'a-token'