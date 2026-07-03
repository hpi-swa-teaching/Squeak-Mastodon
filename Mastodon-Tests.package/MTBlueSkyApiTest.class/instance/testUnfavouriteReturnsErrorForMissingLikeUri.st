tests
testUnfavouriteReturnsErrorForMissingLikeUri

	| api client toot result |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'like-token'.
	api instVarNamed: 'did' put: 'did:plc:alice'.
	toot := MTToot new
		likeUri: nil;
		favouritesCount: 3;
		yourself.
	
	result := api unfavourite: toot.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky unlike failed'