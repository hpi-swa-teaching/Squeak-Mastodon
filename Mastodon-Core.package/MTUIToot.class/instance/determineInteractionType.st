render
determineInteractionType

	| userName |
	self interaction: ''.
	self object inReplyToAccountID ifNotNil: [
		userName := (MTAccount getAccountFromId: self object inReplyToAccountID) value federatedUsername.
		self interaction: '&nbsp;&nbsp;replied to: @', userName].
	self object reblog ifNotNil: [self interaction: '&nbsp;&nbsp;reblogged:']