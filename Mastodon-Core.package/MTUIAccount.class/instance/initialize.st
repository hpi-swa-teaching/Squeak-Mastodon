as yet unclassified
initialize
	super initialize.
	self account: MTAccount new.
	
	self followButton: MTUIRepostButton new.
	self blockButton: MTUIStarButton new.