as yet unclassified
tweet
	| text |
	text := tootTextArea contents asString.
	tootApi updateStatusWithText: text.
	tootTextArea contents: ''.