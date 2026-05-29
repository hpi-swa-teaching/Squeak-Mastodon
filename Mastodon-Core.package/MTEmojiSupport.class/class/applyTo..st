as yet unclassified
applyTo: aText

	| emojiFont |
	aText ifNil: [^ aText].
	emojiFont := (TextConstants at: #NotoEmoji ifAbsent: [^ aText])
		fontOfSize: TextStyle default defaultFont pointSize.
	emojiFont ifNil: [^ aText].
	1 to: aText size do: [:i |
		(aText string at: i) asInteger > 16rFFFF ifTrue: [
			aText addAttribute: (TextFontReference toFont: emojiFont) from: i to: i]].
	^ aText