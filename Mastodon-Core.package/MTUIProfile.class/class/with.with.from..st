initialization
with: anApi with: aTootList from: aMTUser 		
	^ (self new)
		mastodonApi: anApi;
		user: aMTUser;
		tootList: aTootList;
		addUserInfo;
		addUserTimeline