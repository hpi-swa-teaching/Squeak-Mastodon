actions
favouriteToot: anID

	self active
		ifTrue: [
			self mastodonApi unfavourite: anID.
			self active: false;
				balloonText: 'Favourite toot']
		ifFalse: [
			self mastodonApi favourite: anID.
			self active: true;
				balloonText: 'Unfavourite toot']