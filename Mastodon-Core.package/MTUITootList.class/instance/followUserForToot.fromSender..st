actions
followUserForToot: aToot fromSender: aButton

	aButton active
		ifTrue: [
			self socialProvider unfollow: aToot followUri.
			aToot followedByUser: false.
			aToot followUri: ''.
			aButton active: false]
		ifFalse: [ | result |
			result := self socialProvider follow: aToot acct id.
			result isSuccess ifTrue: [
				aToot followedByUser: true.
				aToot followUri: result value.
				aButton active: true]]