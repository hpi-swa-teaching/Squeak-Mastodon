actions
followAccount: anID
	
	self followButton active
		ifTrue: [
			self mastodonApi unfollow: anID.
			self followButton active: false]
		ifFalse: [
			self mastodonApi follow: anID.
			self followButton active: true]