render
fillInteraction

	self interaction: ''.
	self toot inReplyToAccountID ifNotNil: [self interaction: 'replied to: ', self toot inReplyToAccountID].
	self toot reblog ifNotNil: [self interaction: 'reblogged:'].