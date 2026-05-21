updating
loadScheduled

	| scheduled |
	scheduled := mastodonApi getScheduledTimeline.
	scheduled isError ifTrue: [
		self inform: 'An error occurred'.
		^ false].
	
	self setScheduledToots: scheduled value.
	
	^ true