actions
load

	| res scheduled maxId |
	maxId := 0.
	self scheduledToots: OrderedCollection new.
	[
		res := mastodonApi getScheduledTimelineSince: maxId.
		res isError ifTrue: [
			self inform: 'An error occured'.
			^ false].
		scheduled := res value.
		scheduled notEmpty] whileTrue: [
		self scheduledToots: self scheduledToots, scheduled.
		maxId := scheduled first id].
	
	self scheduledToots sort: [:a :b | a scheduledAt >= b scheduledAt].
	self scheduledToots notEmpty ifTrue: [self renderScheduled].
	
	^ true