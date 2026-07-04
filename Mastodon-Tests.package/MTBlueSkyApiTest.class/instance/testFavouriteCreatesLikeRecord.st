like endpoints
testFavouriteCreatesLikeRecord

	| api client toot result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.feed.like/new456"}').
	api := self apiWithMockClient: client token: 'like-token'.
	api instVarNamed: 'did' put: 'did:plc:alice'.
	toot := MTToot new
		id: 'at://did:plc:bob/app.bsky.feed.post/abc';
		cid: 'cid-post';
		favouritesCount: 5;
		yourself.
	
	result := api favourite: toot.
	
	self assert: result isSuccess equals: true.
	self assert: result value equals: toot.
	self assert: toot favourited equals: true.
	self assert: toot likeUri equals: 'at://did:plc:alice/app.bsky.feed.like/new456'.
	self assert: toot favouritesCount equals: 6.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.createRecord'.
	self assert: (client lastPostContent includesSubstring: 'app.bsky.feed.like').
	self assert: (client lastPostContent includesSubstring: 'at://did:plc:bob/app.bsky.feed.post/abc').
	self assert: (client lastPostContent includesSubstring: 'cid-post').
	self assert: client lastPostType equals: 'application/json'