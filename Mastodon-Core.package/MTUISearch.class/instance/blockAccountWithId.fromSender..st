action
blockAccountWithId: anInteger fromSender: aButton
	aButton active 
		
		ifTrue: [self mastodonApi unblock: anInteger.
				aButton active: false]
		
		ifFalse: [self mastodonApi block: anInteger.
				aButton active: true]