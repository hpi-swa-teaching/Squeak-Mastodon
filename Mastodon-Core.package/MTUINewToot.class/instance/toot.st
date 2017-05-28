as yet unclassified
toot
	| text |
	text := tootTextArea contents asString.
	mastodonApi toot: text.
	tootTextArea contents: ''.