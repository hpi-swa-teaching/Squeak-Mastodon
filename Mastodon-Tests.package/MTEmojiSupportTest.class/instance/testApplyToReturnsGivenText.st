tests
testApplyToReturnsGivenText

	| text |
	text := 'hello' asText.
	self assert: (MTEmojiSupport new applyTo: text) == text