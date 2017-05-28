as yet unclassified
from: aJsonObject
	^ (self new)
		id: (aJsonObject at: 'id');
		username: (aJsonObject at: 'username');
		acct: (aJsonObject at: 'acct');
		displayName: (aJsonObject at: 'displayName');
		createdAt: (aJsonObject at: 'createdAt');
		url: (aJsonObject at: 'url');
		note: (aJsonObject at: 'note');
		avatar: (aJsonObject at: 'avatar');
		header: (aJsonObject at: 'header');
		followersCount: (aJsonObject at: 'followers_count');
		followingCount: (aJsonObject at: 'following_count');
		statusesCount: (aJsonObject at: 'statuses_count');
		yourself.