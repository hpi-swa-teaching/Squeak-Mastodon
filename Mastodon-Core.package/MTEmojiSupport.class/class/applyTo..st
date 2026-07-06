applying
applyTo: aString

	| emojiFont text |
	aString ifNil: [^ aString].
	emojiFont := (TextConstants at: #NotoEmoji ifAbsent: [^ aString]) fontOfSize: TextStyle default defaultFont pointSize.
	text := aString string.
	1 to: text size do: [:i |
		(text string at: i) asInteger > self maximumTextCharacter ifTrue: [
			aString
				addAttribute: (TextFontReference toFont: emojiFont)
				from: i
				to: i]].
	^ aString