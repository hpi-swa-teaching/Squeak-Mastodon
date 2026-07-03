render
addSearchSection

	| searchButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Search Users' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setWrapper: requestWrapper.
	requestWrapper wrapCentering: #topLeft.
	
	searchTextField := MTLineEdit new.
	self searchTextField
		hResizing: #rigid;
		width: 500;
		height: 36.
	self searchTextField helpText: self searchHelpText.
	requestWrapper addMorphBack: self searchTextField.
	
	searchButton := UiPushButton new.
	searchButton text: 'Search User'.
	self connect: searchButton signal: #clicked: toSelector: #search.
	requestWrapper addMorphBack: searchButton.
	
	self addMorphBack: requestWrapper