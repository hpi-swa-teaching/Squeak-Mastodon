toot
validateTootText

	| text |
	text := tootTextArea contents asString.
	text size > self maxTextSize ifTrue: [^ MTResult error: 'Not more than ', self maxTextSize, ' characters allowed.'].
	^ MTResult value: text