tests
testUnfavouriteDeletesLikeRecord

	| api client toot result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{}').
	api := self apiWithMockClient: client token: 'like-token'.
	api instVarNamed: 'did' put: 'did:plc:alice'.
	toot := MTToot new
		likeUri: 'at://did:plc:alice/app.bsky.feed.like/rkey789';
		favourited: true;
		favouritesCount: 6;
		yourself.
	
	result := api unfavourite: toot.
	
	self assert: result isSuccess equals: true.
	self assert: toot favourited equals: false.
	self assert: toot likeUri equals: nil.
	self assert: toot favouritesCount equals: 5.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.deleteRecord'.
	self assert: (client lastPostContent includesSubstring: 'rkey789').
	self assert: (client lastPostContent includesSubstring: 'app.bsky.feed.like')