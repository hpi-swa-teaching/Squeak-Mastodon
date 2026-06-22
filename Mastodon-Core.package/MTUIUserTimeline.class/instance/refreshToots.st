updating
refreshToots

	| newToots |
	self mastodonApi hasToken ifFalse: [^false].
	newToots := self mastodonApi getStatusesOf: id max: maxID.
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	self prependToots: newToots value