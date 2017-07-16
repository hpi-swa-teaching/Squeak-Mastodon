accessing
handleKeystroke: anEvent
	super handleKeystroke: anEvent.
	self tootSize: self contents asString size.
	self owner owner updateTootSize.
