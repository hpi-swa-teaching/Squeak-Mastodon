schedule-toot
validateTootText
	| text tootTextArea |
	text := tootTextArea contents asString.
	text size > 500 ifTrue: [^ MTResult error: 'Not more than 500 characters allowed.'].
	^ MTResult value: text