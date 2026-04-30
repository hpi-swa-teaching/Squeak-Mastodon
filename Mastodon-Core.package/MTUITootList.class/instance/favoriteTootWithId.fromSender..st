actions
favoriteTootWithId: anInteger fromSender: aButton
	(self mastodonApi supportsFeature: #favourite)
		ifFalse: [self inform: 'Favorites not supported.'. ^ false].
	aButton active
		ifTrue:[self mastodonApi unfavourite: anInteger.
				aButton active: false]
		ifFalse:[	self mastodonApi favourite: anInteger.
				aButton active: true.]