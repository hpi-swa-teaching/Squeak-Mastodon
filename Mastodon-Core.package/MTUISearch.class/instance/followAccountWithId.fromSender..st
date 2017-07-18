as yet unclassified
followAccountWithId: anInteger fromSender: aButton
	aButton active 
		
		ifTrue: [self mastodonApi unfollow: anInteger.
				aButton active: false]
		
		ifFalse: [self mastodonApi follow: anInteger.
				aButton active: true]