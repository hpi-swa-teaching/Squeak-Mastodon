helper
asTextFromHtml: aString

	^ (MTUITextFormatter on: aString readStream) nextText