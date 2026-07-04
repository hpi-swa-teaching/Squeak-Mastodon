authentication
testRegisterApplicationStoresCredentials

	| api client |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"client_id":"the-id","client_secret":"the-secret"}').
	api := self apiWithMockClient: client.

	api registerApplication.

	self assert: api clientID equals: 'the-id'.
	self assert: api clientSecret equals: 'the-secret'.
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/apps'