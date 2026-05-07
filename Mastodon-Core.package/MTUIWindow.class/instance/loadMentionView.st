views
loadMentionView
	self 
		loadView: (MTUIMention with: mastodonApi)
		as: #mentionView 
		activate: #mentionButton.