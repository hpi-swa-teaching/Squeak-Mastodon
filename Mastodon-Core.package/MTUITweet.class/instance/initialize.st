as yet unclassified
initialize
	super initialize.
	tweet := STTweet new.
	
	self retweetButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.