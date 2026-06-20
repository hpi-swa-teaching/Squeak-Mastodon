as yet unclassified
followAccountWithId: anInteger fromSender: aButton
	aButton active 

		ifTrue: [MTMastodonApi getInstance unfollow: anInteger.
				aButton active: false]

		ifFalse: [MTMastodonApi getInstance follow: anInteger.
				aButton active: true]