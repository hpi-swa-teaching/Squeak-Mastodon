updating
loadReplies

	| replies thread |
	self mastodonApi hasToken ifFalse: [^ false].
	self rootToot ifNil: [^ false].

	replies := self mastodonApi getRepliesTo: self rootToot id.
	replies isError ifTrue: [^ false].

	thread := OrderedCollection new.
	thread add: self rootToot.
	thread addAll: replies value.

	self computeDepthsFor: thread.
	self setToots: thread.
	^ true