actions
followAccount: anID
	
	self active
		ifTrue: [
			self mastodonApi unfollow: anID.
			self active: false]
		ifFalse: [
			self mastodonApi follow: anID.
			self active: true]