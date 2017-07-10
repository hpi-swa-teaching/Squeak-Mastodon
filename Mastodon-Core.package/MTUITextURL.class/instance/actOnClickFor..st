as yet unclassified
actOnClickFor: anObject 
	| username |
	(url beginsWith: 'mastodonUser:')
		ifTrue: [username := url copyFrom: 'mastodonUser:' size + 1 to: url size.
			MTUIWindow instance displayUser: username]
		ifFalse: [MTUtils openLink: url].
	^ true