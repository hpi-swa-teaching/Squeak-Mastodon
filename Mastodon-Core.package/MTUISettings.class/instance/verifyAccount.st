actions
verifyAccount

	| account |
	account := self mastodonApi verifyCredentials value.
	self resultTextLabel contents: ('<i>Successfully logged in as <b>', account username, '</b></i>') asHtmlText