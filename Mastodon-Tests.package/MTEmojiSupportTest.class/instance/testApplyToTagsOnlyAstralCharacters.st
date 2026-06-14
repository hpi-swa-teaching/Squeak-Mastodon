tests
testApplyToTagsOnlyAstralCharacters

	| text hadKey |
	hadKey := TextConstants includesKey: #NotoEmoji.
	hadKey ifFalse: [TextConstants at: #NotoEmoji put: TextStyle default].
	[
		text := ('a', (String with: (Character value: 128512)), 'b') asText.
		MTEmojiSupport applyTo: text.
		self deny: (self hasEmojiFontAt: 1 in: text).
		self assert: (self hasEmojiFontAt: 2 in: text).
		self deny: (self hasEmojiFontAt: 3 in: text)] ensure: [hadKey ifFalse: [TextConstants removeKey: #NotoEmoji]]