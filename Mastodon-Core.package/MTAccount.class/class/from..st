initialization
from: aJsonObject
	^ (self new)
		id: (aJsonObject at: 'id');
		username: (aJsonObject at: 'username');
		acct: (aJsonObject at: 'acct');
		displayName: (aJsonObject at: 'display_name');
		createdAt: (aJsonObject at: 'created_at');
		buildUrl: (aJsonObject at: 'url');
		note: (aJsonObject at: 'note');
		avatar: (aJsonObject at: 'avatar');
		header: (aJsonObject at: 'header');
		followersCount: (aJsonObject at: 'followers_count');
		followingCount: (aJsonObject at: 'following_count');
		statusesCount: (aJsonObject at: 'statuses_count');
		yourself.