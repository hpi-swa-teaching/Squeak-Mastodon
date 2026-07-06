accessing-morphs
noteText

	^ noteText ifNil: [noteText := self getNoteText]