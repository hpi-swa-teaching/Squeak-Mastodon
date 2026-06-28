actions
blockAccount: anID

	self blockButton active
		ifTrue: [
			self mastodonApi unblock: anID.
			self blockButton active: false]
		ifFalse: [
			self mastodonApi block: anID.
			self blockButton active: true]