helper
asTextFromHtml: aString
	"Answer a Text by interpreting the receiver as HTML."
	| clean text |
	clean := MTEmojiSupport stripJoiners: aString.
	text := (MTUITextFormatter on: clean readStream) nextText.
	MTEmojiSupport applyTo: text.
	^ text