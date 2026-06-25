views
loadReplyViewTo: aToot

	self loadView: (MTUINewToot replyTo: aToot) as: #newTootView activate: #newTootButton
