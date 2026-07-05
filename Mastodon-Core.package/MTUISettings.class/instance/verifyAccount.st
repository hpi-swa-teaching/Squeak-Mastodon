actions
verifyAccount

	| account |
	account := self socialProvider verifyCredentials value.
	self socialProvider username: account username.
	self resultTextLabel contents: ('<i>Successfully logged in as <b>', account username, '</b></i>') asHtmlText