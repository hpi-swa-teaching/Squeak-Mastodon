media endpoints
testUpdateCredentialsPatchesProfile

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: DataProvider mockAccount).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api updateCredentials: (Dictionary newFromPairs: {'display_name'. 'New Name'}).
	
	self assert: (result includesSubstring: 'momomo').
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/accounts/update_credentials'