actions
cancelToot: aScheduledTootMorph

	| menu |
	menu := DialogWindow new.
	menu
		title: 'Are you sure you want to permanently delete this toot?';
		createButton: 'Confirm' value: true;
		createCancelButton.
	self addMorph: menu.
	
	menu getUserResponse ifFalse: [^ self].
	self mastodonApi cancelScheduledToot: aScheduledTootMorph toot id.
	self
		loadScheduled;
		render