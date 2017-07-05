as yet unclassified
initialize
	super initialize.
	self account: MTAccount new.
	
	self followButton: MTUIFollowButton new.
	self blockButton: MTUIMuteButton new.