updating
collectArchived: aBlock

	| mentions myToots archivedIds posts |
	mentions := aBlock value.
	
	myToots := (self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value.
	myToots := myToots select: [:toot | toot notNil].
	
	archivedIds := (myToots collect: [:toot | toot inReplyToID asString]) asSet.
	archivedIds addAll: self archivedIds.
	
	posts := mentions select: [:mention | archivedIds includes: mention status id asString].
	posts select: [:toot | toot notNil].
	^ posts collect: [:mention | mention status]