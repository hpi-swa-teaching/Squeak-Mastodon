as yet unclassified
collectMentions: aBlock

	| mentions repliedIDs toots |
	toots := OrderedCollection new.
	mentions := aBlock value. "collecting new Mentions or all mentions"
	
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	mentions do: [:mention |
		(mention status notNil
			and: [(repliedIDs includes: mention status id asString) not]
			and: [(self isArchived: mention status id) not]) ifTrue: [
			toots add: mention status]].
	^ toots 