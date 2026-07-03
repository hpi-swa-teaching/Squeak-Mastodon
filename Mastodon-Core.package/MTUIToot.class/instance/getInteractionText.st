helpers
getInteractionText

	self toot inReplyToAccountID ifNotNil: [^ '&nbsp;&nbsp;replied to: @', (self mastodonApi getFederatedUsername: self toot inReplyToAccountID)].
	self toot reblog ifNotNil: [^ '&nbsp;&nbsp;reblogged:'].
	^ ''