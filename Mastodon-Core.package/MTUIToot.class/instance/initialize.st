as yet unclassified
initialize
	super initialize.
	toot := STTweet new.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.