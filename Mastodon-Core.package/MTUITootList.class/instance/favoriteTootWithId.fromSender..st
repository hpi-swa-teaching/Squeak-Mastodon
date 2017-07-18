as yet unclassified
favoriteTootWithId: anInteger fromSender: aButton
	aButton active
		ifTrue:[self mastodonApi unfavourite: anInteger.
				aButton active: false]
		ifFalse:[	self mastodonApi favourite: anInteger.
				aButton active: true.]
			
		