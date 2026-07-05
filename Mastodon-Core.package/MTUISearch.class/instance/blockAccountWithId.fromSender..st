action
blockAccountWithId: anInteger fromSender: aButton

	aButton active
		ifTrue: [
			self socialProvider unblock: anInteger.
			aButton active: false]
		ifFalse: [
			self socialProvider block: anInteger.
			aButton active: true]