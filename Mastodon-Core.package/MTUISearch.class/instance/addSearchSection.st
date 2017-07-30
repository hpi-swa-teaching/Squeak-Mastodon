render
addSearchSection 
	| searchButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Search Users' asHtmlText).
		
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setWrapper: requestWrapper.
	requestWrapper wrapCentering: #topLeft.
		
	searchTextField := UiLineEdit new.
	searchTextField helpText: '@User@Domain'.
	requestWrapper addMorphBack: searchTextField.
	
	searchButton := UiPushButton new.
	searchButton text: 'Search User'.
	self
		connect: searchButton
 		signal: #clicked:
 		toSelector: #search.
	requestWrapper addMorphBack: searchButton.
	
	self addMorphBack: requestWrapper.