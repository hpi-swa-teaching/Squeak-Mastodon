action endpoints
testMuteReturnsRelationship

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"id":"7","following":false,"followed_by":false,"blocking":false,"muting":true,"requested":false,"domainBlocking":false}').
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api mute: '7'.
	
	self assert: result value class equals: MTRelationship.
	self assert: result value muting equals: true.
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/accounts/7/mute'