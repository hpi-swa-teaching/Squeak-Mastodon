updating
collectMentions: aTootList

	| repliedIDs |
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	^ aTootList
		select: [:toot |
			toot status notNil
				and: [(repliedIDs includes: toot status id asString) not]
				and: [(self isArchived: toot status id) not]]
		thenCollect: [:toot | toot status]