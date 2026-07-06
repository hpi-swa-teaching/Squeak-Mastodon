render
getVisibilityWindow

	| menu |
	menu := DialogWindow new title: 'Visibility'.
	(menu createButton: 'Public' value: 'public') balloonText: 'Anyone on and off Mastodon can see this post.'.
	(menu createButton: 'Quiet public' value: 'unlisted') balloonText: 'Post is hidden from Mastodon search results, trending, and public timelines.'.
	(menu createButton: 'Followers' value: 'private') balloonText: 'Only your followers can see this post.'.
	(menu createButton: 'Private mention' value: 'direct') balloonText: 'Everyone mentioned in the post can see it.'.
	menu createCancelButton.
	
	^ menu