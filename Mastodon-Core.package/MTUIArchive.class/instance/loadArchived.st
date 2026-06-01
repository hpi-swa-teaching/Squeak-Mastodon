as yet unclassified
loadArchived

	| mentions myToots archivedIds |
	archivedToots := OrderedCollection new.
	mentions := self mastodonApi getMention value.
	myToots := (self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value.
	myToots := myToots select: [:toot | toot notNil].
	archivedIds := (myToots collect: [:toot | toot inReplyToID asString]) asSet.
	archivedIds addAll: self archivedIds.
	
	archivedToots := mentions select: [:mention | archivedIds includes: mention status id asString].
	self renderArchived