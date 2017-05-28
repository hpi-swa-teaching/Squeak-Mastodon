as yet unclassified
favoriteTootWithId: anInteger fromSender: aButton
	self mastodonApi favoriteStatusWithId: anInteger.
	aButton active: true.