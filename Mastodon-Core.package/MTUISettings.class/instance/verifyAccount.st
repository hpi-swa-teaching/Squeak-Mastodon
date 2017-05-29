as yet unclassified
verifyAccount
	| accout |
	accout := (self mastodonApi verifyCredentials) value.  
	resultTextLabel contents: ('<i>Successfully logged in as ', accout username , '</i>') asHtmlText.