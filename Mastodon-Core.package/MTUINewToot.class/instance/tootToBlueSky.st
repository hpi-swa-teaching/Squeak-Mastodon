toot
tootToBlueSky

	| text result |
	text := self tootTextArea contents asString.
	text size > self tootCharacterLimit ifTrue: [
		self inform: 'Not more than ', self tootCharacterLimit asString, ' characters allowed.'.
		^ false].
	result := self imageMorph
		ifNil: [self socialProvider toot: text]
		ifNotNil: [self socialProvider toot: text withImage: self imageMorph imageForm].
	result isError ifTrue: [self inform: result error. ^ false].
	self tootTextArea contents: ''.
	self removeOldMorph.
	self sendPostFeedback.
	^ true