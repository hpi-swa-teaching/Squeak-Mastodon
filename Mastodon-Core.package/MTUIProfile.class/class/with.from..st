initialization
with: aTootList from: aMTUser

	^ self new
		user: aMTUser;
		tootList: aTootList;
		addUserInfo;
		addSortFilterWithObservers: {aTootList};
		addUserTimeline