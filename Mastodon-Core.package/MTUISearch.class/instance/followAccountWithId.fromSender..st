as yet unclassified
followAccountWithId: anInteger fromSender: aButton
	self mastodonApi follow: anInteger.
	aButton active: true