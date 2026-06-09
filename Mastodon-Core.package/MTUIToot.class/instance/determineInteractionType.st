render
determineInteractionType

	self interaction: ''.
	self object inReplyToAccountID ifNotNil: [self interaction: '&nbsp;&nbsp;replied to: ', self object inReplyToAccountID].
	self object reblog ifNotNil: [self interaction: '&nbsp;&nbsp;reblogged:'].