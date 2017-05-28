as yet unclassified
favoriteTweetWithId: anInteger fromSender: aButton
	self twitterApi favoriteStatusWithId: anInteger.
	aButton active: true.