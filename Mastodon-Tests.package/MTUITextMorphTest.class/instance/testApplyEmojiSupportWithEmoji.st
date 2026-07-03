as yet unclassified
testApplyEmojiSupportWithEmoji

	| textMorph smileyEmoji emojiText |
	smileyEmoji := (Character value: 16r1F600).
	emojiText := 'Hello', smileyEmoji.
	textMorph := MTUITextMorph new newContents: emojiText.
	
	self shouldnt: [textMorph applyEmojiSupportIfNeeded] raise: Error.
	self assert: textMorph contents string equals: emojiText