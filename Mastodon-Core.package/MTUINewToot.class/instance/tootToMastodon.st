toot
tootToMastodon

	| text visibility |
	text := self tootTextArea contents asString.
	text size > self tootCharacterLimit ifTrue: [
		self inform: 'Not more than ', self tootCharacterLimit asString, ' characters allowed.'.
		^ false].
	visibility := self addTootMenu getUserResponse.
	self imageMorph
		ifNil: [self mastodonApi toot: text withVisibility: visibility]
		ifNotNil: [self tootImagewithVisibility: visibility].
	self tootTextArea contents: ''.
	self sendPostFeedback.
	^ true