tests
testGetProfileForReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/app.bsky.actor.getProfile?actor=ghost.bsky.social'.
	api := self apiWithMockClient: client token: 'profile-token'.
	
	result := api getProfileFor: 'ghost.bsky.social'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky profile request failed'