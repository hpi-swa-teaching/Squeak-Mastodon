action
followAccountWithId: anInteger fromSender: aButton

	aButton active
		ifTrue: [
			self socialProvider unfollow: anInteger.
			aButton active: false]
		ifFalse: [
			self socialProvider follow: anInteger.
			aButton active: true]