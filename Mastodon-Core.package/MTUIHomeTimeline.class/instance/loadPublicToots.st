updating
loadPublicToots

	| result |
	result := self mastodonApi getPublicTimeline.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	self setToots: result value.
	^ true