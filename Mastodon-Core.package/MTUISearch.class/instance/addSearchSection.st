render
addSearchSection

	| searchButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Search Users' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView applyWrapperLayoutTo: requestWrapper.
	requestWrapper wrapCentering: #topLeft.
	
	searchTextField := MTLineEdit new.
	searchTextField
		hResizing: #rigid;
		width: 800;
		height: 36.
	searchTextField helpText: 'Enter Username'.
	searchTextField returnAction: [self search].
	requestWrapper addMorphBack: searchTextField.
	
	searchButton := UiPushButton new.
	searchButton text: 'Search User'.
	searchButton setBalloonText: 'Search for a user by his @'.
	self connect: searchButton signal: #clicked: toSelector: #search.
	requestWrapper addMorphBack: searchButton.
	
	self addMorphBack: requestWrapper