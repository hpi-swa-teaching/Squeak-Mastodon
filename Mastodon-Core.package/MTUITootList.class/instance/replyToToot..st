actions
replyToToot: aToot

	| replyText |
	replyText := UIManager default
		request: 'Antwort eingeben:'
		initialAnswer: '@', aToot acct username, ' '.
	
	replyText ifNil: [^ self].
	replyText isEmpty ifTrue: [^ self].
	
	self mastodonApi replyTo: aToot id text: replyText