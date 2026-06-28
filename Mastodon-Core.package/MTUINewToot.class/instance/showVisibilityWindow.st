render
showVisibilityWindow

	| menu response |
	menu := DialogWindow new title: 'Visibility'.
	(menu createButton: 'Public' value: 'public') balloonText: 'Anyone on and off Mastodon can see this post.'.
	(menu createButton: 'Quiet public' value: 'unlisted') balloonText: 'Post is hidden from Mastodon search results, trending, and public timelines.'.
	(menu createButton: 'Followers' value: 'private') balloonText: 'Only your followers can see this post.'.
	(menu createButton: 'Private mention' value: 'direct') balloonText: 'Everyone mentioned in the post can see it.'.
	menu createCancelButton.
	self addMorph: menu.
	
	response := menu getUserResponse.
	response = false ifFalse: [
		self visibilitySetting: response.
		(response = 'private' or: [response = 'direct'])
			ifTrue: [
				self quotePolicySetting: 'nobody'.
				self quotePolicyButton enabled: false]
			ifFalse: [self quotePolicyButton enabled: true]]