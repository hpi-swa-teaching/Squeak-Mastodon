authentication
testWithBaseURL

	| api |
	api := MTMastodonApi with: 'https://mastodon.social'.
	self assert: api baseURL equals: 'https://mastodon.social'