account
testAccountUrl

	| model |
	model := MTAccount new.
	
	model url: 'https://mastodon.social/@flo'.
	
	self assert: model url equals: 'https://mastodon.social/@flo'