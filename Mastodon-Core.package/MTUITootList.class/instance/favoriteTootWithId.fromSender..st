as yet unclassified
favoriteTootWithId: anInteger fromSender: aButton
	self mastodonApi favourite: anInteger.
	aButton active: true.