updating
loadPublicToots

	| toots |
	toots := self mastodonApi getPublicTimeline.
	toots isError ifTrue: [
		self inform: (toots error ifNil: ['An error occurred']).
		^ false].
	self setToots: toots value.
	^ true