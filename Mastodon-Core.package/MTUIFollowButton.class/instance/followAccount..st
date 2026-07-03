actions
followAccount: anID
	
	| cache |
	cache := MTRelationshipCache default retrieveValueForKey: anID.
	self active
		ifTrue: [
			self mastodonApi unfollow: anID.
			cache ifNotNil: [cache following: false].
			self active: false;
				balloonText: 'Follow user']
		ifFalse: [
			self mastodonApi follow: anID.
			cache ifNotNil: [cache following: true].
			self active: true;
				balloonText: 'Unfollow user']