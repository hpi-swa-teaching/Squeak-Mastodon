toot
toot
	| text visibility |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	text := self validateTootText.
	text ifNil: [^ false].
	
	visibility := self chooseVisibility.
	imageMorph
		ifNil: [mastodonApi toot: text withVisibility: visibility]
		ifNotNil: [self tootImagewithVisibility: visibility].
	tootTextArea contents: ''.
	self sendPostFeedback