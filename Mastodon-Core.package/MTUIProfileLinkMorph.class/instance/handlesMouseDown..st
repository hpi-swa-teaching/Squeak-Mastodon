events
handlesMouseDown: anEvent
	^ (target notNil and: [actionSelector notNil])
		or: [super handlesMouseDown: anEvent]