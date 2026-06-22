edit states
profileNoteText

	^ self editedNote ifNil: [MTUtils asTextFromHtml: self account note]