as yet unclassified
logout
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
	self mastodonApi token: nil.
	resultTextLabel contents: ('<i>Successfully logged out</i>') asHtmlText.