initialization
initialize

	super initialize.
	self
		postedAt: self toot createdAt;
		content: self toot content.
	
	self
		showArchiveButton: false;
		repostButton: MTUIRepostButton new;
		heartButton: MTUIStarButton new;
		replyButton: MTUIReplyButton new;
		archiveButton: MTUIArchiveButton new;
		followButton: MTUIFollowButton new