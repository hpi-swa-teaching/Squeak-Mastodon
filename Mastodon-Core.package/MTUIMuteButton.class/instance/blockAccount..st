actions
blockAccount: anID

	self active
		ifTrue: [
			self mastodonApi unblock: anID.
			self active: false]
		ifFalse: [
			self mastodonApi block: anID.
			self active: true]