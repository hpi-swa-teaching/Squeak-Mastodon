render
getNameField

	| field |
	field := PluggableTextMorph
		on: self
		text: #profileNameText
		accept: #profileNameText:
		readSelection: nil
		menu: nil.
	
	field
		width: 400;
		hResizing: #rigid;
		vResizing: #shrinkWrap.
	
	^ field