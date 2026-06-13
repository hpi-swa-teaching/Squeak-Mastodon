render
with: aTootList from: aMTUser

	^ self
		user: aMTUser;
		tootList: aTootList;
		addUserInfo;
		addUserTimeline