render
getSearchTextField

	^ MTLineEdit new
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		helpText: self searchTextFieldHelpText;
		returnAction: [self search];
		changeAction: [self updateSearchButton];
		yourself