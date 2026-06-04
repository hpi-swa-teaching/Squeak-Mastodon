updating
setScheduledToots: anOrderedCollection

	self scheduledToots: anOrderedCollection.
	
	self scheduledToots notEmpty ifTrue: [self renderScheduled]