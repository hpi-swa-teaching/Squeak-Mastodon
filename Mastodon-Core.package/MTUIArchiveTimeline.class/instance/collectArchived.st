as yet unclassified
collectArchived

	| mentions myToots archivedIds toots |
	toots := OrderedCollection new.
	mentions := self mastodonApi getMention value.
	
	myToots := (self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value.
	myToots := myToots select: [:toot | toot notNil].
	
	archivedIds := (myToots collect: [:toot | toot inReplyToID asString]) asSet.
	archivedIds addAll: self archivedIds.
	
	toots := mentions select: [:mention | archivedIds includes: mention status id asString].
	toots select: [:toot| toot notNil].
	self setToots: (toots collect: [:mention | mention status]) value.