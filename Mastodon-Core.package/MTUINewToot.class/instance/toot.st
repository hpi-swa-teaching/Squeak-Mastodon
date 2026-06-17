toot
toot

	| text parameters |
	self mastodonApi hasToken ifFalse: [^ false].
	
	text := self tootTextArea contents asString.
	text size > self maxTextSize ifTrue: [
		self inform: 'Not more than ', self maxTextSize asString, ' characters allowed.'.
		^ false].
	parameters := Dictionary newFromPairs: {'status'. text. 'visibility'. self visibilitySetting. 'quote_approval_policy'. self quotePolicySetting}.
	
	self imageMorph = 'empty'
		ifTrue: [self mastodonApi tootWithParameters: parameters]
		ifFalse: [self tootImageWithParameters: parameters].
	self tootTextArea contents: ''.
	self showFeedback