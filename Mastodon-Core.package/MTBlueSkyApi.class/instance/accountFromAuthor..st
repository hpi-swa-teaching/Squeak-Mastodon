helpers
accountFromAuthor: anAuthor
	| account displayName handle createdAt |
	handle := anAuthor at: 'handle' ifAbsent: [''].
	displayName := anAuthor at: 'displayName' ifAbsent: [handle].
	createdAt := anAuthor at: 'createdAt' ifAbsent: ['1970-01-01T00:00:00.000Z'].
	account := MTAccount new.
	account
		id: (anAuthor at: 'did' ifAbsent: [handle]);
		username: handle;
		acct: handle;
		displayName: displayName;
		createdAt: createdAt;
		buildUrl: (anAuthor at: 'did' ifAbsent: ['']);
		note: '';
		avatar: (anAuthor at: 'avatar' ifAbsent: ['']);
		header: '';
		followersCount: (anAuthor at: 'followersCount' ifAbsent: [0]);
		followingCount: (anAuthor at: 'followsCount' ifAbsent: [0]);
		statusesCount: (anAuthor at: 'postsCount' ifAbsent: [0]);
		yourself.
	^ account