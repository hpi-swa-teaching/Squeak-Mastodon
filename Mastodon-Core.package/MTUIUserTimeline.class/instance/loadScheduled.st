updating
loadScheduled

	| res scheduled cur |
	cur := 0.
	self scheduledToots: OrderedCollection new.
	[
		res := self mastodonApi getScheduledTimelineSince: cur.
		res isError ifTrue: [
			self inform: 'An error occured'.
			^ false].
		scheduled := res value.
		scheduled notEmpty] whileTrue: [
		self scheduledToots: self scheduledToots, scheduled.
		cur := scheduled first id].
	
	self scheduledToots sort: [:a :b | a scheduledAt >= b scheduledAt].
	
	^ true