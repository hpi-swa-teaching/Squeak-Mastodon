tests
testApplyToReturnsGivenText

	| text |
	text := 'hello' asText.
	self assert: (MTEmojiSupport applyTo: text) == text