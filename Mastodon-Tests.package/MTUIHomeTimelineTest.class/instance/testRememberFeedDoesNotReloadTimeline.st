tests
testRememberFeedDoesNotReloadTimeline

	| timeline addedFeed loadedToot |
	addedFeed := MTBlueSkyFeed new
		displayName: 'Science';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/science';
		sourceType: #feed;
		yourself.
	loadedToot := MTToot new
		content: 'Already loaded';
		yourself.
	timeline := MTUIHomeTimeline new.
	timeline toots: (OrderedCollection with: loadedToot).
	
	timeline rememberFeed: addedFeed.
	
	self assert: (timeline feeds detect: [:feed | feed uri = addedFeed uri] ifNone: [nil]) notNil.
	self assert: timeline selectedFeed isTimeline equals: true.
	self assert: timeline toots first content equals: 'Already loaded'