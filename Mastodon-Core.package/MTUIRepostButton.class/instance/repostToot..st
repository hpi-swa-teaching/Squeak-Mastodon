actions
repostToot: anID

	self active ifFalse: [
		self mastodonApi reblog: anID.
		self active: true]