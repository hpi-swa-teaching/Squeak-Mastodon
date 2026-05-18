views
loadMentionView

	| mentionView |
	mentionView := MTUIMention with: mastodonApi.
	mentionView mtuiWindow: self.
	self loadView: mentionView as: #mentionView activate: #mentionButton