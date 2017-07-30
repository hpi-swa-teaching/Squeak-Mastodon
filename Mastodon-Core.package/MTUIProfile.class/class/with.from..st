initialize
with: aTootList from: aMTUser 		
	^ (self new)
		user: aMTUser;
		tootList: aTootList;
		addUserInfo;
		addUserTimeline.