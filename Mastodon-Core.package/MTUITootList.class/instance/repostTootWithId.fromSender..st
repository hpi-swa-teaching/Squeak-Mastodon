actions
repostTootWithId: anInteger fromSender: aButton
	(self mastodonApi supportsFeature: #reblog)
		ifFalse: [self inform: 'Reposts not supported.'. ^ false].
	aButton active
		ifFalse: [self mastodonApi reblog: anInteger.
				aButton active: true]