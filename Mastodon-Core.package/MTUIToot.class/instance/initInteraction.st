render
initInteraction

	self interaction: ''.
	self toot inReplyToAccountID ifNotNil: [self interaction: '&nbsp;&nbsp;replied to: ', self toot inReplyToAccountID].
	self toot reblog ifNotNil: [self interaction: '&nbsp;&nbsp;reblogged:'].