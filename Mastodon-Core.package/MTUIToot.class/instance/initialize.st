initialization
initialize

	super initialize.
	toot := MTToot new.
	
	showArchiveButton := false.
	
	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.
	
	self replyButton: MTUIReplyButton new.
	self archiveButton: MTUIArchiveButton new.