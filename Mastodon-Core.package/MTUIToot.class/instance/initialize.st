initialization
initialize

	super initialize.
	self toot: MTToot new.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.
	self followButton: MTUIFollowButton new