render
getNoteField

	| field |
	field := PluggableTextMorph
		on: self
		text: #profileBioText
		accept: #profileBioText:
		readSelection: nil
		menu: nil.
	
	field
		width: 400;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		wrapFlag: true.
	
	^ field