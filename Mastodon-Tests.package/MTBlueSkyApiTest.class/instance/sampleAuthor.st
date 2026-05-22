support
sampleAuthor
	| author |
	author := Dictionary new.
	author
		at: 'did' put: 'did:plc:alice';
		at: 'handle' put: 'alice.bsky.social';
		at: 'displayName' put: 'Alice Example';
		at: 'createdAt' put: '2026-05-04T13:00:00.000Z';
		at: 'avatar' put: 'https://cdn.bsky.app/avatar.jpg';
		at: 'followersCount' put: 10;
		at: 'followsCount' put: 4;
		at: 'postsCount' put: 23.
	^ author
