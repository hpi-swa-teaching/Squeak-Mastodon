initialization
initialize
	super initialize.
	self account: MTAccount new.
	
	self followButton: MTUIFollowButton new.
	self blockButton: MTUIMuteButton new.
	self directTootButton: MTUIDirectTootButton new.