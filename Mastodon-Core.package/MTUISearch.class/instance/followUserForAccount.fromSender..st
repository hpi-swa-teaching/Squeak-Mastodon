action
followUserForAccount: anAccount fromSender: aButton
	aButton active
		ifTrue: [
			self mastodonApi unfollow: anAccount followUri.
			anAccount followUri: ''.
			aButton active: false]
		ifFalse: [
			| result |
			result := self mastodonApi follow: anAccount id.
			result isSuccess ifTrue: [
				anAccount followUri: result value.
				aButton active: true]]