support
sampleFeedItem
	| item post record |
	record := Dictionary new.
	record
		at: 'text' put: 'Hello Bluesky';
		at: 'createdAt' put: '2026-05-04T14:00:00.000Z'.

	post := Dictionary new.
	post
		at: 'uri' put: 'at://did:plc:alice/app.bsky.feed.post/1';
		at: 'cid' put: 'cid-1';
		at: 'author' put: self sampleAuthor;
		at: 'record' put: record;
		at: 'likeCount' put: 7;
		at: 'repostCount' put: 2.

	item := Dictionary new.
	item at: 'post' put: post.
	^ item
