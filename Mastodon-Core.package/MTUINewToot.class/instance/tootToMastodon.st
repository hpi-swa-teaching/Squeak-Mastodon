toot
tootToMastodon

	| text visibility |
	text := tootTextArea contents asString.
	text size > self tootCharacterLimit ifTrue: [
		self inform: 'Not more than ', self tootCharacterLimit asString, ' characters allowed.'.
		^ false].
	visibility := self addTootMenu getUserResponse.
	imageMorph
		ifNil: [mastodonApi toot: text withVisibility: visibility]
		ifNotNil: [self tootImagewithVisibility: visibility].
	tootTextArea contents: ''.
	self sendPostFeedback.
	^ true