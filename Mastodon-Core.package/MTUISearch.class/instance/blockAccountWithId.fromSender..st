action
blockAccountWithId: anInteger fromSender: aButton
	self mastodonApi block: anInteger.
	aButton active: true