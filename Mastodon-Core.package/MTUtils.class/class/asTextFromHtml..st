helper
asTextFromHtml: aString

	| strippedHtml cleanText |
	strippedHtml := MTEmojiSupport stripJoiners: aString.
	cleanText := (HtmlReadWriter on: strippedHtml readStream) nextText.
	MTEmojiSupport applyTo: cleanText.
	^ cleanText