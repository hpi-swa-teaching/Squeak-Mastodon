helpers
tootFromFeedItem: aFeedItem

	| post record author viewer authorViewer toot likeUri followUri repostUri |
	post := aFeedItem at: 'post' ifAbsent: [Dictionary new].
	record := post at: 'record' ifAbsent: [Dictionary new].
	author := post at: 'author' ifAbsent: [Dictionary new].
	viewer := post at: 'viewer' ifAbsent: [Dictionary new].
	authorViewer := author at: 'viewer' ifAbsent: [Dictionary new].
	likeUri := viewer at: 'like' ifAbsent: [nil].
	repostUri := viewer at: 'repost' ifAbsent: [nil].
	followUri := authorViewer at: 'following' ifAbsent: [nil].
	toot := MTToot new.
	toot
		id: (post at: 'uri' ifAbsent: [post at: 'cid' ifAbsent: ['']]);
		cid: (post at: 'cid' ifAbsent: [nil]);
		createdAt: (record at: 'createdAt' ifAbsent: ['1970-01-01T00:00:00.000Z']);
		content: (record at: 'text' ifAbsent: ['']);
		acct: (self accountFromAuthor: author);
		favourited: likeUri notNil;
		likeUri: likeUri;
		reblogged: repostUri notNil;
		reblogsCount: (post at: 'repostCount' ifAbsent: [0]);
		favouritesCount: (post at: 'likeCount' ifAbsent: [0]);
		urls: (post at: 'uri' ifAbsent: ['']);
		media: #();
		followedByUser: followUri notNil;
		followUri: (followUri ifNil: ['']);
		repostUri: (repostUri ifNil: ['']).
	^ toot