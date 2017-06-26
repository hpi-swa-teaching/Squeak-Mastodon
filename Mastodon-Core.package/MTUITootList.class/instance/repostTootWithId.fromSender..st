as yet unclassified
repostTootWithId: anInteger fromSender: aButton
	self mastodonApi reblog: anInteger.
	aButton active: true