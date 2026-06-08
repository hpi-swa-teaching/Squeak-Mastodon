as yet unclassified
getNewMentions

	^[(self mastodonApi getMentionSince: self maxID) value.]