actions
reblogToot: anID

	self active
		ifTrue: [
			self mastodonApi unreblog: anID.
			self active: false;
				balloonText: 'Reblog toot']
		ifFalse: [
			self mastodonApi reblog: anID.
			self active: true;
				balloonText: 'Unreblog toot']