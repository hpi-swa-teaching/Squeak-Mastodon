as yet unclassified
verifyAccount
	| json username |
	json := self mastodonApi verifyCredentials.
	username := (json at: 'username').
	resultTextLabel contents: ('<i>Successfully logged in as ', username, '</i>') asHtmlText.
	 