toot
toot

	| text parameters |
	self mastodonApi hasToken ifFalse: [^ false].
	
	text := self tootTextArea contents asString.
	text size > self maxTextSize ifTrue: [
		self inform: 'Not more than ', self maxTextSize asString, ' characters allowed.'.
		^ false].
	parameters := {'status' -> text. 'visibility' -> self visibilitySetting} asOrderedCollection.
	self quotePolicySetting ifNotNil: [parameters add: 'quote_approval_policy' -> self quotePolicySetting].
	
	self media
		ifEmpty: [self mastodonApi tootWithParameters: parameters]
		ifNotEmpty: [self tootImageWithParameters: parameters].
	self tootTextArea contents: ''.
	self showFeedback