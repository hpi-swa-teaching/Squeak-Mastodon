comparing
hash

	^ {
		self id.
		self createdAt.
		self content.
		self reblog.
		self quote.
		self account.
		self favourited.
		self reblogged.
		self reblogsCount.
		self favouritesCount.
		self inReplyToAccountID.
		self inReplyToID.
		self url.
		self media} hash