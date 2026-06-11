tests
testApplyToLeavesAsciiUntagged

	| text |
	text := 'hello world' asText.
	MTEmojiSupport applyTo: text.
	1 to: text size do: [:i |
		self deny: (self hasEmojiFontAt: i in: text)]