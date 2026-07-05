actions
replyToToot: aToot

	| replyWindow window |
	replyWindow := MTUINewToot new.
	replyWindow mastodonApi: self mastodonApi.
	replyWindow mtuiWindow: self mtuiWindow.
	replyWindow replyTo: aToot.
	replyWindow reloadMentionTimeline: true.
	replyWindow addTemplateButtonInReply.
	
	window := SystemWindow new.
	window setLabel: 'Reply'.
	window addMorph: replyWindow frame: (0 @ 0 extent: 1 @ 1).
	window openInWorld