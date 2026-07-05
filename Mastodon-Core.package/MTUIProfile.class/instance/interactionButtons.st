accessing-buttons
interactionButtons
	
	^ interactionButtons ifNil: [interactionButtons := self getInteractionButtons]