as yet unclassified
toot
	| text |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	text := tootTextArea contents asString.
	text size > 500
		ifTrue: [self inform: 'Not more than 500 characters allowed.'.
			^ false].
	imageMorph
		ifNil: [mastodonApi toot: text]
		ifNotNil: [self tootImage].
	tootTextArea contents: ' '.