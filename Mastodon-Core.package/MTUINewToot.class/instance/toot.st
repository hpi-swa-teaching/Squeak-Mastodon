toot
toot

	| textRes text visibility |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	textRes := self validateTootText.
	textRes isError ifTrue: [
		self inform: textRes error.
		^ false].
	text := textRes value.
	
	visibility := self chooseVisibility.
	
	imageMorph
		ifNil: [mastodonApi toot: text withVisibility: visibility]
		ifNotNil: [self tootImagewithVisibility: visibility].
	tootTextArea contents: ''.
	self sendPostFeedback