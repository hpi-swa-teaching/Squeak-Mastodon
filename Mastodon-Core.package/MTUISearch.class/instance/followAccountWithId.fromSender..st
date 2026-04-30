action
followAccountWithId: anInteger fromSender: aButton
	(self mastodonApi supportsFeature: #follow)
		ifFalse: [self inform: 'Following not supported.'. ^ false].
	aButton active 
		
		ifTrue: [self mastodonApi unfollow: anInteger.
				aButton active: false]
		
		ifFalse: [self mastodonApi follow: anInteger.
				aButton active: true]