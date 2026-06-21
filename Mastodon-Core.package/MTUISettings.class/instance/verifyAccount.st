actions
verifyAccount

	| account response |
	response := self mastodonApi verifyCredentials ifNil: [^ nil].
	account := response value.
	resultTextLabel contents: ('<i>Successfully logged in as <b>', account username, '</b></i>') asHtmlText.
	self loadCurrentProfile