helpers
accountFrom: aJson

	^ MTAccount new
		id: (aJson at: 'id');
		username: (aJson at: 'username');
		federatedUsername: (aJson at: 'acct');
		displayName: (aJson at: 'display_name');
		createdAt: (aJson at: 'created_at');
		url: (aJson at: 'url');
		note: (aJson at: 'note');
		avatar: (aJson at: 'avatar');
		header: (aJson at: 'header');
		followersCount: (aJson at: 'followers_count');
		followingCount: (aJson at: 'following_count');
		statusesCount: (aJson at: 'statuses_count');
		yourself