actions
replyToToot: aToot

	| replyWindow window |
	replyWindow := MTUINewToot new.
	replyWindow mastodonApi: self mastodonApi.
	replyWindow replyTo: aToot.
	
	window := SystemWindow new.
	window setLabel: 'Reply'.
	window addMorph: replyWindow frame: (0 @ 0 extent: 1 @ 1).
	
	window openInWorld