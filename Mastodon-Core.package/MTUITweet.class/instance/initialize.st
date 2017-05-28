as yet unclassified
initialize
	super initialize.
	tweet := STTweet new.
	
	self retweetButton: MTUIRetweetButton new.
	self heartButton: MTUIStarButton new.