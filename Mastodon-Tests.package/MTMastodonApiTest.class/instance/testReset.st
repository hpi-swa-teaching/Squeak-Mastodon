tests
testReset

	| api |
	api := MTMastodonApi new.
	
	api username: 'schmidtflo'.
	api password: '123'.
	api baseURL: 'https://mastodon.network'.
	
	api reset.
	
	self assert: api username equals: nil.
	self assert: api password equals: nil.
	self assert: api baseURL equals: nil