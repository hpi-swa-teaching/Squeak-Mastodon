actions
favouriteToot: anID

	self active
		ifTrue: [
			self mastodonApi unfavourite: anID.
			self active: false]
		ifFalse: [
			self mastodonApi favourite: anID.
			self active: true]