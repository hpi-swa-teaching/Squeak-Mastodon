action
blockAccountWithId: anInteger fromSender: aButton
	(self mastodonApi supportsFeature: #block)
		ifFalse: [self inform: 'Blocking not supported.'. ^ false].
	aButton active 
		
		ifTrue: [self mastodonApi unblock: anInteger.
				aButton active: false]
		
		ifFalse: [self mastodonApi block: anInteger.
				aButton active: true]