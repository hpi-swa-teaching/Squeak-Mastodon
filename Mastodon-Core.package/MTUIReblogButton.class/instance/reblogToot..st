actions
reblogToot: anID

	self active
		ifTrue: [
			self mastodonApi unreblog: anID.
			self active: false]
		ifFalse: [
			self mastodonApi reblog: anID.
			self active: true]