toot
tootToMastodon
	| text visibility |
	text := tootTextArea contents asString.
	text size > 500
		ifTrue: [self inform: 'Not more than 500 characters allowed.'.
			^ false].
	visibility := self addTootMenu getUserResponse.
	imageMorph
		ifNil: [mastodonApi toot: text withVisibility: visibility]
		ifNotNil: [self tootImagewithVisibility: visibility].
	tootTextArea contents: ''.
	self sendPostFeedback