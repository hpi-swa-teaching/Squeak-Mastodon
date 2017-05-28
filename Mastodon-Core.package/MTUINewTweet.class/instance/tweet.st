as yet unclassified
tweet
	| text |
	text := tweetTextArea contents asString.
	twitterApi updateStatusWithText: text.
	tweetTextArea contents: ''.