actions
favouriteToot: anID

	self active ifFalse: [
		self mastodonApi favourite: anID.
		self active: true]