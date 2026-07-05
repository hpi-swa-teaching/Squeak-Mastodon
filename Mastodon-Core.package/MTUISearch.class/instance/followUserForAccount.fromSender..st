action
followUserForAccount: anAccount fromSender: aButton

	aButton active
		ifTrue: [
			self socialProvider unfollow: anAccount followUri.
			anAccount followUri: ''.
			aButton active: false]
		ifFalse: [ | result |
			result := self socialProvider follow: anAccount id.
			result isSuccess ifTrue: [
				anAccount followUri: result value.
				aButton active: true]]