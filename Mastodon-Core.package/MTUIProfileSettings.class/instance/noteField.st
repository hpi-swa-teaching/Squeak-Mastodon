accessing-morphs
noteField

	^ noteField ifNil: [noteField := self getNoteField]