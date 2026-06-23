updating
getNewMentions

	^(self mastodonApi getMentionSince: self maxID) value.