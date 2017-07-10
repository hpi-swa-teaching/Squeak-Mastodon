as yet unclassified
toot
	| text |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	text := tootTextArea contents asString.
	imageMorph
		ifNil: [mastodonApi toot: text]
		ifNotNil: [self tootImage].
	tootTextArea contents: ' '.