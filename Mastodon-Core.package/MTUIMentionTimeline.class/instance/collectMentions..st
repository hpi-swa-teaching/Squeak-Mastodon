as yet unclassified
collectMentions: aTootList

	| mentions repliedIDs toots |
	mentions := OrderedCollection new.
	toots := aTootList.
	
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	toots do: [:toot |
		(toot status notNil
			and: [(repliedIDs includes: toot status id asString) not]
			and: [(self isArchived: toot status id) not]) ifTrue: [
			mentions add: toot status]].
	^ mentions 