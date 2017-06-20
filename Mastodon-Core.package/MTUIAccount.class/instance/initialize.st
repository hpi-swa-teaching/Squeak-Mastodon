as yet unclassified
initialize
	super initialize.
	account := MTUIAccount new.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.