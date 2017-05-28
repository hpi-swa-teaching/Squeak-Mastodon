as yet unclassified
verifyAccount
	| acct |
	acct := (self mastodonApi verifyCredentials) value.
	resultTextLabel contents: ('<i>Successfully logged in as ', acct username , '</i>') asHtmlText.
	 