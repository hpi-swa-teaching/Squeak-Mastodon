as yet unclassified
with: aTweetList from: aSTUser 		
	^ (self new)
		user: aSTUser;
		tweetList: aTweetList;
		addUserInfo;
		addUserTimeline.