helpers
tootFromFeedItem: aFeedItem
	| post record author toot |
	post := aFeedItem at: 'post' ifAbsent: [Dictionary new].
	record := post at: 'record' ifAbsent: [Dictionary new].
	author := post at: 'author' ifAbsent: [Dictionary new].
	toot := MTToot new.
	toot
		id: (post at: 'uri' ifAbsent: [post at: 'cid' ifAbsent: ['']]);
		createdAt: (record at: 'createdAt' ifAbsent: ['1970-01-01T00:00:00.000Z']);
		content: (record at: 'text' ifAbsent: ['']);
		account: (self accountFromAuthor: author);
		favourited: false;
		reblogged: false;
		reblogsCount: (post at: 'repostCount' ifAbsent: [0]);
		favouritesCount: (post at: 'likeCount' ifAbsent: [0]);
		urls: (post at: 'uri' ifAbsent: ['']);
		media: #();
		yourself.
	^ toot