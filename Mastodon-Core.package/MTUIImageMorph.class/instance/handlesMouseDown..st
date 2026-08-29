event handling
handlesMouseDown: anEvent

	^ (self target notNil and: [self actionSelector notNil]) or: [super handlesMouseDown: anEvent]