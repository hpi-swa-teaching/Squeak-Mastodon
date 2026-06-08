as yet unclassified
collectMentions
	|mentions repliedIDs toots|
	toots := OrderedCollection new.
	mentions := self mastodonApi getMention value.
	
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	mentions do: [:mention |
		(mention status notNil
			and: [(repliedIDs includes: mention status id asString) not]
			and: [(self isArchived: mention status id) not]) ifTrue: [ | matchedMention |
			matchedMention := mention status.
			toots add: matchedMention.
			]].
	
	self setToots: toots value.