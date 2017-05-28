as yet unclassified
repostTootWithId: anInteger fromSender: aButton
	self mastodonApi retweetStatusWithId: anInteger.
	aButton active: true