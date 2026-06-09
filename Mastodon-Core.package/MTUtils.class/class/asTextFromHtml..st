helper
asTextFromHtml: aString
	"Answer a Text by interpreting the receiver as HTML."

	^ (HtmlReadWriter on: aString readStream) nextText