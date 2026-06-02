toot
tootToBlueSky
	| text result |
	text := tootTextArea contents asString.
	text size > self tootCharacterLimit
		ifTrue: [self inform: 'Not more than ', self tootCharacterLimit asString, ' characters allowed.'.
			^ false].
	result := imageMorph
		ifNil: [mastodonApi toot: text]
		ifNotNil: [mastodonApi toot: text withImage: imageMorph imageForm].
	result isError ifTrue: [^ self inform: result error].
	tootTextArea contents: ''.
	self removeOldMorph.
	self sendPostFeedback