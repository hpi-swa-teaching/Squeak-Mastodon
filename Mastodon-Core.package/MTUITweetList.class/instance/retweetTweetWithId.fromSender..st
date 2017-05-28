as yet unclassified
retweetTweetWithId: anInteger fromSender: aButton
	self twitterApi retweetStatusWithId: anInteger.
	aButton active: true