as yet unclassified
initialize
	super initialize.
	toot := MTToot new.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.