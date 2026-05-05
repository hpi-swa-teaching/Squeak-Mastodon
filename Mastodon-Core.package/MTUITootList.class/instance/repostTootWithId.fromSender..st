actions
repostTootWithId: anInteger fromSender: aButton
	aButton active
		ifFalse: [self mastodonApi reblog: anInteger.
				aButton active: true]