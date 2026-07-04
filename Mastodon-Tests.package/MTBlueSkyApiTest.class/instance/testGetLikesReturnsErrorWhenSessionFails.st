like endpoints
testGetLikesReturnsErrorWhenSessionFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'.
	api := self apiWithMockClient: client token: 'likes-token'.
	
	result := api getLikes.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'Could not determine current user DID'