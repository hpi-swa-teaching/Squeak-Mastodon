helpers
testSavedFeedItemForUri

	| api item |
	api := MTBlueSkyApi new.
	item := api savedFeedItemForUri: 'at://did:plc:alice/app.bsky.feed.generator/science' pinned: true.
	
	self assert: (item at: 'type') equals: 'feed'.
	self assert: (item at: 'value') equals: 'at://did:plc:alice/app.bsky.feed.generator/science'.
	self assert: (item at: 'pinned') equals: true