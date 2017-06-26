as yet unclassified
actOnClickFor: anObject 
	| username |
	(url beginsWith: 'smallTweetUser:')
		ifTrue: [username := url copyFrom: 'smallTweetUser:' size + 1 to: url size.
			MTUIWindow instance displayUser: username]
		ifFalse: [MTUtils openLink: url].
	^ true