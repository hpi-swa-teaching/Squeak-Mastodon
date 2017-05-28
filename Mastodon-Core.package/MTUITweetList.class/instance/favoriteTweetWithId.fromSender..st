as yet unclassified
favoriteTweetWithId: anInteger fromSender: aButton
	self mastodonApi favoriteStatusWithId: anInteger.
	aButton active: true.