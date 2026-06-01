toot
toot

	| text visibility |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	text := tootTextArea contents asString.
	text size > self maxTextSize ifTrue: [
		self inform: 'Not more than ', self maxTextSize asString, ' characters allowed.'.
		^ false].
	
	visibility := self addTootMenu.
	imageMorph = 'empty'
		ifTrue: [mastodonApi toot: text withVisibility: visibility]
		ifFalse: [self tootImagewithVisibility: visibility].
	tootTextArea contents: ''.
	self sendPostFeedback