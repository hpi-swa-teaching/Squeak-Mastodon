as yet unclassified
testApplyEmojiSupportWithoutEmoji

	| textMorph |
	textMorph := MTUITextMorph new newContents: 'Hello'.
	
	self shouldnt: [textMorph applyEmojiSupportIfNeeded] raise: Error.
	self assert: textMorph contents string equals: 'Hello'