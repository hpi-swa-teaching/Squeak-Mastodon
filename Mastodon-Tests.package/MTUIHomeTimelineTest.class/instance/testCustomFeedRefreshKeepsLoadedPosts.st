tests
testCustomFeedRefreshKeepsLoadedPosts
	| client api timeline feed toot |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'feed-token'.
	feed := MTBlueSkyFeed new
		displayName: 'Video';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/video';
		sourceType: #feed;
		yourself.
	toot := MTToot new
		content: 'Already loaded';
		yourself.
	timeline := MTUIHomeTimeline new.
	timeline mastodonApi: api.
	timeline selectedFeed: feed.
	timeline toots: (OrderedCollection with: toot).
	
	self assert: timeline refreshToots equals: false.
	self assert: timeline toots first content equals: 'Already loaded'.
	self assert: client lastGetUrl isNil
