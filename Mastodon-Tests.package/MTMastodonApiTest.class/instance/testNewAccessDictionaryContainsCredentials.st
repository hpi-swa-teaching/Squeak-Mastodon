authentication
testNewAccessDictionaryContainsCredentials

	| api dictionary |
	api := MTMastodonApi new.
	api
		username: 'flo';
		password: 'a-password';
		clientID: 'a-client-id';
		clientSecret: 'a-client-secret'.

	dictionary := api newAccessDictionary.

	self assert: (dictionary at: 'username') equals: 'flo'.
	self assert: (dictionary at: 'password') equals: 'a-password'.
	self assert: (dictionary at: 'grant_type') equals: 'password'.
	self assert: (dictionary at: 'scope') equals: 'read write follow'