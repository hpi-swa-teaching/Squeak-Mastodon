comparing
hash

	^ {
		self id.
		self username.
		self federatedUsername.
		self displayName.
		self createdAt.
		self url.
		self note.
		self avatar.
		self header.
		self followersCount.
		self followingCount.
		self statusesCount} hash