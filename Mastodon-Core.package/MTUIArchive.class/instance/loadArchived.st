as yet unclassified
loadArchived

	| mentions myToots replyIds|
	archivedToots := OrderedCollection new.
	mentions := self mastodonApi getMention value.
	myToots := (self mastodonApi getStatuses: (self mastodonApi getCurrentUser value id)) value.
	myToots := myToots select: [:toot | toot notNil].
	replyIds := (myToots
	collect: [:toot | toot inReplyToID asString])
	asSet.
	
	archivedToots := mentions select: [:mention |
	replyIds includes: mention status id asString
].
	Transcript show: 'Archived matches: ', archivedToots size printString; cr.
	self renderArchived.
	