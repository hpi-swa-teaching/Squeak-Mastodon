actions
repostTootWithId: anInteger fromSender: aButton
	aButton active
		ifTrue: [self mastodonApi unreblog: anInteger.
				aButton active: false]
		ifFalse: [self mastodonApi reblog: anInteger.
				aButton active: true]