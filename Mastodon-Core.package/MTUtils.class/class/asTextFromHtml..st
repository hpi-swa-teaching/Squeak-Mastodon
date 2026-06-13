helper
asTextFromHtml: aString
	"Answer a Text by interpreting the receiver as HTML."
	| strippedHtml cleanText |
	strippedHtml := MTEmojiSupport stripJoiners: aString.
	cleanText := (HtmlReadWriter on: strippedHtml readStream) nextText.
	MTEmojiSupport applyTo: cleanText.
	^ cleanText