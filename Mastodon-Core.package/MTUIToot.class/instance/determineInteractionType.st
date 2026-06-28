render
determineInteractionType

	self interaction: ''.
	self toot inReplyToAccountID ifNotNil: [self interaction: '&nbsp;&nbsp;replied to: @', (self mastodonApi getFederatedUsername: self toot inReplyToAccountID)].
	self toot reblog ifNotNil: [self interaction: '&nbsp;&nbsp;reblogged:']