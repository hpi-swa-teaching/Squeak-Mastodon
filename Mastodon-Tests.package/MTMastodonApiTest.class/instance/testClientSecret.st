useless tests
testClientSecret

	| api |
	api := MTMastodonApi new.
	api clientSecret: 'thisisasecret'.
	self assert: api clientSecret equals: 'thisisasecret'