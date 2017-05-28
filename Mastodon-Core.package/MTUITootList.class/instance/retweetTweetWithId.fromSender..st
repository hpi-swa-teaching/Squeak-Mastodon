as yet unclassified
retweetTweetWithId: anInteger fromSender: aButton
	self mastodonApi retweetStatusWithId: anInteger.
	aButton active: true