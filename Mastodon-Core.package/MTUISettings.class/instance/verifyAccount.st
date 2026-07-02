actions
verifyAccount

	| account |
	account := self mastodonApi verifyCredentials value.
	self mastodonApi username: account username.
	resultTextLabel contents: ('<i>Successfully logged in as <b>', account username, '</b></i>') asHtmlText