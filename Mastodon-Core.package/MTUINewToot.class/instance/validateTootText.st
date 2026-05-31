toot
validateTootText

	| text |
	text := tootTextArea contents asString.
	text size > 500 ifTrue: [
		self inform: 'Not more than 500 characters allowed.'.
		^ nil].
	^ text