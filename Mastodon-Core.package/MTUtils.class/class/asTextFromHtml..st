helper
asTextFromHtml: aString
	"Answer a Text by interpreting the receiver as HTML."

	| strippedHtml cleanText |
	strippedHtml := MTEmojiSupport new stripJoiners: aString.
	cleanText := (HtmlReadWriter on: strippedHtml readStream) nextText.
	MTEmojiSupport new applyTo: cleanText.
	^ cleanText