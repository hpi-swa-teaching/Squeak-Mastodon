as yet unclassified
initialize
	super initialize.
	self account: MTAccount new.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.