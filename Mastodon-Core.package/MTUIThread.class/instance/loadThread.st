updating
loadThread

	| context thread |
	self mastodonApi hasToken ifFalse: [^ false].
	self rootToot ifNil: [^ false].

	context := self mastodonApi getContextOf: self rootToot id.
	context isError ifTrue: [^ false].

	thread := OrderedCollection new.
	thread addAll: (context value at: #ancestors).
	thread add: self rootToot.
	thread addAll: (context value at: #descendants).

	self computeDepthsFor: thread.
	self setToots: thread.
	^ true