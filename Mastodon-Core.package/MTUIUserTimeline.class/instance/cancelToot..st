actions
cancelToot: aScheduledTootMorph

	| menu |
	menu := DialogWindow new.
	menu title: 'Are you sure you want to permanently delete this toot?'.
	menu createButton: 'Confirm' value: true.
	menu createCancelButton.
	self addMorph: menu.
	menu getUserResponse ifTrue: [
		self mastodonApi cancelScheduledToot: aScheduledTootMorph toot id.
		self
			loadScheduled;
			render]