render
getNoteField

	| field |
	field := PluggableTextMorph
		on: self
		text: #profileNoteText
		accept: #profileNoteText:
		readSelection: nil
		menu: nil.
	
	field
		width: 400;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		wrapFlag: true.
	
	^ field