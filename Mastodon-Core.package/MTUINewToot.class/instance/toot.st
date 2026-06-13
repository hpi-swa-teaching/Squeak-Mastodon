toot
toot

	| text visibility |
	self mastodonApi hasToken ifFalse: [^ false].
	text := self tootTextArea contents asString.
	text size > self maxTextSize ifTrue: [
		self inform: 'Not more than ', self maxTextSize asString, ' characters allowed.'.
		^ false].
	
	visibility := self addTootMenu.
	self imageMorph = 'empty'
		ifTrue: [self mastodonApi toot: text withVisibility: visibility]
		ifFalse: [self tootImagewithVisibility: visibility].
	self tootTextArea contents: ''.
	self showFeedback