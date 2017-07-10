as yet unclassified
asTextFromHtml: aString
	"Answer a Text by interpreting the receiver as HTML."

	^ (MTUITextFormatter on: aString readStream) nextText